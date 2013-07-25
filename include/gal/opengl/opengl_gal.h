/*
 * This program source code file is part of KICAD, a free EDA CAD application.
 *
 * Copyright (C) 2012 Torsten Hueter, torstenhtr <at> gmx.de
 * Copyright (C) 2012 Kicad Developers, see change_log.txt for contributors.
 * Copyright (C) 2013 CERN
 * @author Maciej Suminski <maciej.suminski@cern.ch>
 *
 * Graphics Abstraction Layer (GAL) for OpenGL
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, you may find one here:
 * http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 * or you may search the http://www.gnu.org website for the version 2 license,
 * or you may write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA
 */

#ifndef OPENGLGAL_H_
#define OPENGLGAL_H_

// GAL imports
#include <gal/graphics_abstraction_layer.h>
#include <gal/opengl/shader.h>
#include <gal/opengl/vertex_manager.h>
#include <gal/opengl/vertex_item.h>
#include <gal/opengl/noncached_container.h>
#include <gal/opengl/opengl_compositor.h>

#include <wx/wx.h>
#include <wx/glcanvas.h>

#include <cmath>
#include <iterator>
#include <vector>
#include <algorithm>
#include <memory>
#include <map>
#include <boost/smart_ptr/shared_ptr.hpp>

#include <stdlib.h>
#include <iostream>
#include <fstream>


namespace KiGfx
{
class SHADER;

/**
 * @brief Class OpenGL_GAL is the OpenGL implementation of the Graphics Abstraction Layer.
 *
 * This is a direct OpenGL-implementation and uses low-level graphics primitives like triangles
 * and quads. The purpuse is to provide a fast graphics interface, that takes advantage of modern
 * graphics card GPUs. All methods here benefit thus from the hardware acceleration.
 */
class OPENGL_GAL : public GAL, public wxGLCanvas
{
public:

    /**
     * @brief Constructor OPENGL_GAL
     *
     * @param aParent is the wxWidgets immediate wxWindow parent of this object.
     *
     * @param aMouseListener is the wxEvtHandler that should receive the mouse events,
     *  this can be can be any wxWindow, but is often a wxFrame container.
     *
     * @param aPaintListener is the wxEvtHandler that should receive the paint
     *  event.  This can be any wxWindow, but is often a derived instance
     *  of this class or a containing wxFrame.  The "paint event" here is
     *  a wxCommandEvent holding EVT_GAL_REDRAW, as sent by PostPaint().
     *
     * @param aName is the name of this window for use by wxWindow::FindWindowByName()
     *
     * @param isUseShaders is a flag, that  indicates, if shaders should be used
     *        for higher quality rendering.
     *
     */
    OPENGL_GAL( wxWindow* aParent, wxEvtHandler* aMouseListener = NULL,
                wxEvtHandler* aPaintListener = NULL, bool isUseShaders = false,
                const wxString& aName = wxT( "GLCanvas" ) );

    virtual ~OPENGL_GAL();

    // ---------------
    // Drawing methods
    // ---------------

    /// @copydoc GAL::BeginDrawing()
    virtual void BeginDrawing();

    /// @copydoc GAL::EndDrawing()
    virtual void EndDrawing();

    /// @copydoc GAL::DrawLine()
    virtual void DrawLine( const VECTOR2D& aStartPoint, const VECTOR2D& aEndPoint );

    /// @copydoc GAL::DrawSegment()
    virtual void DrawSegment( const VECTOR2D& aStartPoint, const VECTOR2D& aEndPoint, double aWidth );

    /// @copydoc GAL::DrawPolyline()
    virtual void DrawPolyline( std::deque<VECTOR2D>& aPointList );

    /// @copydoc GAL::DrawCircle()
    virtual void DrawCircle( const VECTOR2D& aCenterPoint, double aRadius );

    /// @copydoc GAL::DrawArc()
    virtual void
    DrawArc( const VECTOR2D& aCenterPoint, double aRadius, double aStartAngle, double aEndAngle );

    /// @copydoc GAL::DrawRectangle()
    virtual void DrawRectangle( const VECTOR2D& aStartPoint, const VECTOR2D& aEndPoint );

    /// @copydoc GAL::DrawPolygon()
    virtual void DrawPolygon( const std::deque<VECTOR2D>& aPointList );

    /// @copydoc GAL::DrawCurve()
    virtual void DrawCurve( const VECTOR2D& startPoint, const VECTOR2D& controlPointA,
                            const VECTOR2D& controlPointB, const VECTOR2D& endPoint );

    // --------------
    // Screen methods
    // --------------

    /// @brief Resizes the canvas.
    virtual void ResizeScreen ( int aWidth, int aHeight );

    /// @brief Shows/hides the GAL canvas
    virtual bool Show( bool aShow );

    /// @copydoc GAL::Flush()
    virtual void Flush();

    /// @copydoc GAL::ClearScreen()
    virtual void ClearScreen();

    // -----------------
    // Attribute setting
    // -----------------

    /// @copydoc GAL::SetIsFill()
    virtual void SetIsFill( bool aIsFillEnabled )
    {
        isFillEnabled = aIsFillEnabled;
    }

    /// @copydoc GAL::SetIsStroke()
    virtual void SetIsStroke( bool aIsStrokeEnabled )
    {
        isStrokeEnabled = aIsStrokeEnabled;
    }

    /// @copydoc GAL::SetFillColor()
    virtual void SetFillColor( const COLOR4D& aColor );

    /// @copydoc GAL::SetStrokeColor()
    virtual void SetStrokeColor( const COLOR4D& aColor );

    /// @copydoc GAL::GetStrokeColor()
    COLOR4D      GetStrokeColor();

    /// @copydoc GAL::SetBackgroundColor()
    virtual void SetBackgroundColor( const COLOR4D& aColor );

    /// @copydoc GAL::SetLineWidth()
    virtual void SetLineWidth( double aLineWidth );

    /// @copydoc GAL::GetLineWidth()
    double       GetLineWidth();

    /// @copydoc GAL::SetLayerDepth()
    virtual void SetLayerDepth( double aLayerDepth )
    {
        super::SetLayerDepth( aLayerDepth );
    }

    // --------------
    // Transformation
    // --------------

    /// @copydoc GAL::Transform()
    virtual void Transform( MATRIX3x3D aTransformation );

    /// @copydoc GAL::Rotate()
    virtual void Rotate( double aAngle );

    /// @copydoc GAL::Translate()
    virtual void Translate( const VECTOR2D& aTranslation );

    /// @copydoc GAL::Scale()
    virtual void Scale( const VECTOR2D& aScale );

    /// @copydoc GAL::Save()
    virtual void Save();

    /// @copydoc GAL::Restore()
    virtual void Restore();

    // --------------------------------------------
    // Group methods
    // ---------------------------------------------

    /// @copydoc GAL::BeginGroup()
    virtual int BeginGroup();

    /// @copydoc GAL::EndGroup()
    virtual void EndGroup();

    /// @copydoc GAL::DrawGroup()
    virtual void DrawGroup( int aGroupNumber );

    /// @copydoc GAL::ChangeGroupColor()
    virtual void ChangeGroupColor( int aGroupNumber, const COLOR4D& aNewColor );

    /// @copydoc GAL::ChangeGroupDepth()
    virtual void ChangeGroupDepth( int aGroupNumber, int aDepth );

    /// @copydoc GAL::DeleteGroup()
    virtual void DeleteGroup( int aGroupNumber );

    /// @copydoc GAL::ClearCache()
    virtual void ClearCache();

    // --------------------------------------------------------
    // Handling the world <-> screen transformation
    // --------------------------------------------------------

    /// @copydoc GAL::ComputeWorldScreenMatrix()
    virtual void ComputeWorldScreenMatrix();

    /// @copydoc GAL::GetWorldScreenMatrix()
    MATRIX3x3D GetWorldScreenMatrix();

    /// @copydoc GAL::SetWorldScreenMatrix()
    void SetWorldScreenMatrix( MATRIX3x3D aMatrix );

    /// @copydoc GAL::SetWorldUnitLength()
    void SetWorldUnitLength( double aWorldUnitLength );

    /// @copydoc GAL::SetScreenDPI()
    void SetScreenDPI( double aScreenDPI );

    /// @copydoc GAL::SetLookAtPoint()
    void SetLookAtPoint( const VECTOR2D& aPoint );

    /// @copydoc GAL::GetLookAtPoint()
    VECTOR2D GetLookAtPoint();

    /// @copydoc GAL::SetZoomFactor()
    void SetZoomFactor( double aZoomFactor );

    /// @copydoc GAL::GetZoomFactor()
    double GetZoomFactor();

    /// @copydoc GAL::SaveScreen()
    virtual void SaveScreen();

    /// @copydoc GAL::RestoreScreen()
    virtual void RestoreScreen();

    /// @copydoc GAL::SetTarget()
    virtual void SetTarget( RenderTarget aTarget );

    // -------
    // Cursor
    // -------

    /// @copydoc GAL::ComputeCursorToWorld()
    virtual VECTOR2D ComputeCursorToWorld( const VECTOR2D& aCursorPosition );

    /// @copydoc GAL::SetIsCursorEnabled()
    void SetIsCursorEnabled( bool aIsCursorEnabled );

    /// @copydoc GAL::DrawCursor()
    virtual void DrawCursor( VECTOR2D aCursorPosition );

    /**
     * @brief Function PostPaint
     * posts an event to m_paint_listener.  A post is used so that the actual drawing
     * function can use a device context type that is not specific to the wxEVT_PAINT event.
     */
    void PostPaint()
    {
        if( paintListener )
        {
            wxPaintEvent redrawEvent;
            wxPostEvent( paintListener, redrawEvent );
        }
    }

    void SetMouseListener( wxEvtHandler* aMouseListener )
    {
        mouseListener = aMouseListener;
    }

    void SetPaintListener( wxEvtHandler* aPaintListener )
    {
        paintListener = aPaintListener;
    }

    ///< Parameters passed to the GLU tesselator
    typedef struct
    {
        VERTEX_MANAGER* vboManager;               ///< VERTEX_ITEM for storing new vertices
        std::vector<GLdouble*>& intersectPoints;  ///< Intersect points, that have to be freed
    } TessParams;

protected:
    virtual void DrawGridLine( const VECTOR2D& aStartPoint, const VECTOR2D& aEndPoint );

private:
    /// Super class definition
    typedef GAL super;

    static const int    CIRCLE_POINTS   = 64;   ///< The number of points for circle approximation
    static const int    CURVE_POINTS    = 32;   ///< The number of points for curve approximation

    wxClientDC*     clientDC;               ///< Drawing context
    wxGLContext*    glContext;              ///< OpenGL context of wxWidgets
    wxWindow*       parentWindow;           ///< Parent window
    wxEvtHandler*   mouseListener;
    wxEvtHandler*   paintListener;

    // Precomputed vertices for faster circle & semicircle drawing
    NONCACHED_CONTAINER   circleContainer;        ///< Container for storing circle vertices

    // Vertex buffer objects related fields
    typedef std::map< unsigned int, boost::shared_ptr<VERTEX_ITEM> > GroupsMap;
    GroupsMap             groups;                 ///< Stores informations about VBO objects (groups)
    unsigned int          groupCounter;           ///< Counter used for generating keys for groups
    VERTEX_MANAGER*       currentManager;         ///< Currently used VERTEX_MANAGER (for storing VERTEX_ITEMs)
    VERTEX_MANAGER        cachedManager;          ///< Container for storing cached VERTEX_ITEMs
    VERTEX_MANAGER        nonCachedManager;       ///< Container for storing non-cached VERTEX_ITEMs
    VERTEX_MANAGER        overlayManager;         ///< Container for storing overlaid VERTEX_ITEMs

    // Framebuffer & compositing
    OPENGL_COMPOSITOR     compositor;             ///< Handles multiple rendering targets
    unsigned int          mainBuffer;             ///< Main rendering target
    unsigned int          overlayBuffer;          ///< Auxiliary rendering target (for menus etc.)

    // Polygon tesselation
    GLUtesselator*         tesselator;            ///< Pointer to the tesselator
    std::vector<GLdouble*> tessIntersects;        ///< Storage of intersecting points

    // Shader
    SHADER          shader;                 ///< There is only one shader used for different objects

    // Cursor
    int             cursorSize;             ///< Size of the cursor in pixels
    GLubyte*        cursorShape;            ///< Cursor pixel storage
    GLubyte*        cursorSave;             ///< Saved cursor pixels
    VECTOR2D        savedCursorPosition;    ///< Last saved cursor position

    // Internal flags
    bool            isGlewInitialized;          ///< Is GLEW initialized?
    bool            isFramebufferInitialized;   ///< Are the framebuffers initialized?
    bool            isShaderInitialized;        ///< Was the shader initialized?
    bool            isUseShader;                ///< Should the shaders be used?
    bool            isGrouping;                 ///< Was a group started?

    /**
     * @brief Draw a semi circle. Depending on settings (isStrokeEnabled & isFilledEnabled) it runs
     * the proper function (drawStrokedSemiCircle or drawFilledSemiCircle).
     *
     * @param aCenterPoint is the center point.
     * @param aRadius is the radius of the semi-circle.
     * @param aAngle is the angle of the semi-circle.
     *
     */
    void drawSemiCircle( const VECTOR2D& aCenterPoint, double aRadius, double aAngle );

    /**
     * @brief Draw a filled semi circle.
     *
     * @param aCenterPoint is the center point.
     * @param aRadius is the radius of the semi-circle.
     * @param aAngle is the angle of the semi-circle.
     *
     */
    void drawFilledSemiCircle( const VECTOR2D& aCenterPoint, double aRadius, double aAngle );

    /**
     * @brief Draw a stroked semi circle.
     *
     * @param aCenterPoint is the center point.
     * @param aRadius is the radius of the semi-circle.
     * @param aAngle is the angle of the semi-circle.
     *
     */
    void drawStrokedSemiCircle( const VECTOR2D& aCenterPoint, double aRadius, double aAngle );

    /// Compute the points of the unit circle and store them in VBO.
    void computeCircle();

    // Event handling
    /**
     * @brief This is the window creation event handler.
     *
     * @param aEvent is the window creation event.
     */
    void onCreate( wxWindowCreateEvent& aEvent );

    /**
     * @brief This is the OnPaint event handler.
     *
     * @param aEvent is the OnPaint event.
     */
    void onPaint( wxPaintEvent& aEvent );

    /**
     * @brief Skip the mouse event to the parent.
     *
     * @param aEvent is the mouse event.
     */
    void skipMouseEvent( wxMouseEvent& aEvent );

    /// Initialize GLEW.
    void initGlew();

    /**
     * @brief Initialize the cursor.
     *
     * @param aCursorSize is the cursor size in pixels (screen coordinates).
     */
    void initCursor( int aCursorSize );

    /**
     * @brief Draw a quad for the line.
     *
     * @param aStartPoint is the start point of the line.
     * @param aEndPoint is the end point of the line.
     */
    inline void drawLineQuad( const VECTOR2D& aStartPoint, const VECTOR2D& aEndPoint );

    /**
     * @brief Returns a valid key that can be used as a new group number.
     *
     * @return An unique group number that is not used by any other group.
     */
    unsigned int getNewGroupNumber();
};
} // namespace KiGfx

#endif // OPENGLGAL_H_