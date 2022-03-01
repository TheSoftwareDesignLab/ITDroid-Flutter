.class public Lcom/artfulbits/aiCharts/ChartGestureListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/ChartGestureListener$a;
    }
.end annotation


# static fields
.field public static final ANIMATED_PANNING_FLAG:I = 0x4

.field public static final HORIZONTAL_PANNING_FLAG:I = 0x2

.field public static final NONE_FLAG:I = 0x0

.field public static final VERTICAL_PANNING_FLAG:I = 0x1


# instance fields
.field private final a:Lcom/artfulbits/aiCharts/ChartGestureListener$a;

.field protected final m_chart:Lcom/artfulbits/aiCharts/ChartView;

.field protected m_flags:I


# direct methods
.method public constructor <init>(Lcom/artfulbits/aiCharts/ChartView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/artfulbits/aiCharts/ChartGestureListener;-><init>(Lcom/artfulbits/aiCharts/ChartView;I)V

    return-void
.end method

.method public constructor <init>(Lcom/artfulbits/aiCharts/ChartView;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_flags:I

    iput-object p1, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_chart:Lcom/artfulbits/aiCharts/ChartView;

    new-instance v0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/ChartView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/artfulbits/aiCharts/ChartGestureListener$a;-><init>(Lcom/artfulbits/aiCharts/ChartGestureListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->a:Lcom/artfulbits/aiCharts/ChartGestureListener$a;

    return-void
.end method

.method protected static getAreaAtPoint(Lcom/artfulbits/aiCharts/ChartView;IILcom/artfulbits/aiCharts/Enums/CoordinateSystem;)Lcom/artfulbits/aiCharts/Base/ChartArea;
    .locals 3

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/ChartView;->getAreas()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object v2

    if-ne p3, v2, :cond_0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static moveAxis(Lcom/artfulbits/aiCharts/Base/ChartAxis;F)V
    .locals 9

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v6

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getZoomSize()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    neg-float v0, p1

    float-to-double v0, v0

    mul-double/2addr v0, v4

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getZoomPosition()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getRealMinimum()D

    move-result-wide v2

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getRealMaximum()D

    move-result-wide v7

    sub-double v4, v7, v4

    invoke-static/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/MathUtils;->clamp(DDD)D

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setZoomPosition(D)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_flags:I

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_flags:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    iget v5, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    move v5, v1

    :goto_2
    if-eqz v0, :cond_4

    if-nez v3, :cond_0

    if-eqz v5, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_chart:Lcom/artfulbits/aiCharts/ChartView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    sget-object v8, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Cartesian:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    invoke-static {v0, v6, v7, v8}, Lcom/artfulbits/aiCharts/ChartGestureListener;->getAreaAtPoint(Lcom/artfulbits/aiCharts/ChartView;IILcom/artfulbits/aiCharts/Enums/CoordinateSystem;)Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v6

    if-eqz v6, :cond_4

    if-eqz v3, :cond_6

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getDefaultXAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v0

    move-object v2, v0

    :goto_3
    if-eqz v5, :cond_5

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getDefaultYAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v0

    :goto_4
    iget-object v3, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->a:Lcom/artfulbits/aiCharts/ChartGestureListener$a;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->a()V

    iget-object v3, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->a:Lcom/artfulbits/aiCharts/ChartGestureListener$a;

    neg-float v4, p3

    invoke-virtual {v3, v2, v0, v4, p4}, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->a(Lcom/artfulbits/aiCharts/Base/ChartAxis;Lcom/artfulbits/aiCharts/Base/ChartAxis;FF)V

    :goto_5
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v5, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_5

    :cond_5
    move-object v0, v4

    goto :goto_4

    :cond_6
    move-object v2, v4

    goto :goto_3
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->a:Lcom/artfulbits/aiCharts/ChartGestureListener$a;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->a()V

    if-nez v0, :cond_0

    if-eqz v3, :cond_5

    :cond_0
    iget-object v4, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_chart:Lcom/artfulbits/aiCharts/ChartView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sget-object v7, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Cartesian:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    invoke-static {v4, v5, v6, v7}, Lcom/artfulbits/aiCharts/ChartGestureListener;->getAreaAtPoint(Lcom/artfulbits/aiCharts/ChartView;IILcom/artfulbits/aiCharts/Enums/CoordinateSystem;)Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getSeriesBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getDefaultXAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v0

    neg-float v5, p3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v0, v5}, Lcom/artfulbits/aiCharts/ChartGestureListener;->moveAxis(Lcom/artfulbits/aiCharts/Base/ChartAxis;F)V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getDefaultYAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p4, v2

    invoke-static {v0, v2}, Lcom/artfulbits/aiCharts/ChartGestureListener;->moveAxis(Lcom/artfulbits/aiCharts/Base/ChartAxis;F)V

    :cond_2
    :goto_2
    return v1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_flags:I

    return-void
.end method
