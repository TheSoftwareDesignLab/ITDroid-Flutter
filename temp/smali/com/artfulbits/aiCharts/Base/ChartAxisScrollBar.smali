.class public Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/artfulbits/aiCharts/Base/ChartAxis;

.field private b:Z

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private final e:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->e:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->a:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    return-void
.end method


# virtual methods
.method final a(Z)F
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0
.end method

.method final a(FFFFZ)V
    .locals 9

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->a:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getRealMinimum()D

    move-result-wide v0

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->a:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v2

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getRealSize()D

    move-result-wide v2

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->a:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v4

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v4

    sub-double/2addr v4, v0

    div-double/2addr v4, v2

    iget-object v6, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->a:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v6

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v6

    sub-double v0, v6, v0

    div-double v2, v0, v2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->c:Landroid/graphics/drawable/Drawable;

    float-to-int v1, p1

    float-to-int v6, p2

    float-to-int v7, p3

    float-to-int v8, p4

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr p3, v0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr p4, v0

    :cond_0
    if-eqz p5, :cond_2

    float-to-double v0, p4

    sub-float v6, p4, p2

    float-to-double v6, v6

    mul-double/2addr v4, v6

    sub-double/2addr v0, v4

    double-to-int v1, v0

    float-to-double v4, p4

    sub-float v0, p4, p2

    float-to-double v6, v0

    mul-double/2addr v2, v6

    sub-double v2, v4, v2

    double-to-int v0, v2

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    sub-int v3, v0, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_1

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    div-int/lit8 v1, v0, 0x2

    add-int v0, v1, v2

    :cond_1
    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->d:Landroid/graphics/drawable/Drawable;

    float-to-int v3, p1

    float-to-int v4, p3

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    return-void

    :cond_2
    float-to-double v0, p1

    sub-float v6, p3, p1

    float-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    double-to-int v1, v0

    float-to-double v4, p1

    sub-float v0, p3, p1

    float-to-double v6, v0

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v0, v2

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    sub-int v3, v0, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_3

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    div-int/lit8 v1, v0, 0x2

    add-int v0, v1, v2

    :cond_3
    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->d:Landroid/graphics/drawable/Drawable;

    float-to-int v3, p2

    float-to-int v4, p4

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method final a(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->b:Z

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->c:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->c:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :goto_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->a:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x5

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->b:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->b:Z

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v2, v0, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->d:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->a:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->d:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->d:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScrollBar;->a:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    :cond_0
    return-void
.end method
