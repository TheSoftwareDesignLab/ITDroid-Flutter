.class public abstract Lcom/artfulbits/aiCharts/Base/ChartType;
.super Ljava/lang/Object;


# static fields
.field protected static FLAG_COLOR_PER_POINT:I

.field protected static FLAG_INDEXED:I

.field protected static FLAG_ORIGIN_DEPENDENT:I

.field protected static FLAG_ROTATED:I

.field protected static FLAG_SIDE_BY_SIDE:I

.field protected static FLAG_STACKED:I

.field protected static FLAG_STACKED_100:I

.field protected static FLAG_SUPPORT_3D:I

.field protected static FLAG_Z_AXIS:I

.field protected static final INTERNAL_STACK_GROUP:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final POINT_WIDTH:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static a:I


# instance fields
.field protected m_flags:I

.field protected m_iconPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_INDEXED:I

    const/4 v0, 0x2

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_SIDE_BY_SIDE:I

    const/4 v0, 0x4

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_STACKED:I

    const/16 v0, 0x8

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_STACKED_100:I

    const/16 v0, 0x10

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_ROTATED:I

    const/16 v0, 0x40

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_SUPPORT_3D:I

    const/16 v0, 0x80

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_ORIGIN_DEPENDENT:I

    const/16 v0, 0x1000

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_COLOR_PER_POINT:I

    const/16 v0, 0x2000

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_Z_AXIS:I

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_INDEXED:I

    sget v1, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_ROTATED:I

    or-int/2addr v0, v1

    sget v1, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_STACKED_100:I

    or-int/2addr v0, v1

    sput v0, Lcom/artfulbits/aiCharts/Base/ChartType;->a:I

    const-string v0, "stacked-stack_group"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;

    const-class v2, Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartType;->INTERNAL_STACK_GROUP:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "point-width"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;

    const-class v2, Ljava/lang/Float;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartType;->POINT_WIDTH:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartType;->m_iconPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartType;->m_flags:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartType;->m_iconPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static computeXRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 10

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->size()I

    move-result v8

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isIndexed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object v0

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Polar:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    if-ne v0, v1, :cond_1

    int-to-double v0, v8

    invoke-virtual {p2, v2, v3, v0, v1}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->set(DD)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int/lit8 v0, v8, -0x1

    int-to-double v0, v0

    invoke-virtual {p2, v2, v3, v0, v1}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->set(DD)V

    goto :goto_0

    :cond_2
    if-lez v8, :cond_0

    const-wide v4, -0x10000000000001L

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_4

    invoke-virtual {v7, v6}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->get(I)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v0

    cmpl-double v9, v0, v4

    if-lez v9, :cond_3

    move-wide v4, v0

    :cond_3
    cmpg-double v9, v0, v2

    if-gez v9, :cond_6

    :goto_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-wide v2, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isSideBySide()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->a()Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getSideBySideOffset(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartArea;)Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object v0

    iget-wide v6, v0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    add-double/2addr v2, v6

    iget-wide v0, v0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    add-double/2addr v0, v4

    :goto_3
    invoke-virtual {p2, v2, v3, v0, v1}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->set(DD)V

    goto :goto_0

    :cond_5
    move-wide v0, v4

    goto :goto_3

    :cond_6
    move-wide v0, v2

    goto :goto_2
.end method

.method public static varargs computeYRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;[I)V
    .locals 12

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v8

    invoke-virtual {v8}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->size()I

    move-result v9

    if-lez v9, :cond_a

    const-wide v3, -0x10000000000001L

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isStacked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->a()Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v10

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v9, :cond_7

    const/4 v0, 0x0

    :goto_1
    array-length v5, p3

    if-ge v0, v5, :cond_2

    invoke-virtual {v8, v7}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->get(I)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object v5

    aget v6, p3, v0

    const/4 v11, 0x1

    invoke-static {v10, p1, v5, v6, v11}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartArea;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ)D

    move-result-wide v5

    cmpl-double v11, v5, v3

    if-lez v11, :cond_0

    move-wide v3, v5

    :cond_0
    cmpg-double v11, v5, v1

    if-gez v11, :cond_1

    move-wide v1, v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move v7, v0

    :goto_2
    if-ge v7, v9, :cond_7

    const/4 v0, 0x0

    :goto_3
    array-length v5, p3

    if-ge v0, v5, :cond_6

    invoke-virtual {v8, v7}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->get(I)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object v5

    aget v6, p3, v0

    invoke-virtual {v5, v6}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v5

    cmpl-double v10, v5, v3

    if-lez v10, :cond_4

    move-wide v3, v5

    :cond_4
    cmpg-double v10, v5, v1

    if-gez v10, :cond_5

    move-wide v1, v5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isOriginDependent()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getYAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getOrigin()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-lez v0, :cond_8

    move-wide v3, v5

    :cond_8
    cmpg-double v0, v5, v1

    if-gez v0, :cond_9

    move-wide v1, v5

    :cond_9
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->set(DD)V

    :cond_a
    return-void
.end method

.method protected static drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Paint;Z)V
    .locals 3

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->isBackFilterEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackColor()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, p3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected static drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Landroid/graphics/PointF;Ljava/lang/String;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;F)V
    .locals 10

    new-instance v5, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget v6, p1, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    invoke-direct {v5, v2, v3, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Canvas:Landroid/graphics/Canvas;

    if-eqz p8, :cond_0

    if-nez p9, :cond_4

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->save(I)I

    iget v2, v5, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v5, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    if-eqz p2, :cond_3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, p7

    move/from16 v1, p10

    invoke-static {p2, v0, v1, v3}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a(Ljava/lang/String;Landroid/graphics/Paint;FLandroid/graphics/PointF;)F

    move-result v6

    iget v2, v3, Landroid/graphics/PointF;->x:F

    mul-int/lit8 v8, p6, 0x2

    int-to-float v8, v8

    add-float/2addr v2, v8

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v2, v2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-int/lit8 v8, p6, 0x2

    int-to-float v8, v8

    add-float/2addr v3, v8

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v3, v3

    if-eqz p5, :cond_1

    invoke-virtual {p5, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    add-int/2addr v2, v8

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    add-int/2addr v3, v8

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_1
    sget-object v8, Lcom/artfulbits/aiCharts/Base/q;->a:[I

    invoke-virtual {p3}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    :goto_1
    sget-object v2, Lcom/artfulbits/aiCharts/Base/q;->a:[I

    invoke-virtual {p4}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v8

    aget v2, v2, v8

    packed-switch v2, :pswitch_data_1

    :goto_2
    if-eqz p5, :cond_2

    invoke-virtual {p5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p5, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object v3, p2

    move/from16 v5, p10

    move-object/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a(Ljava/lang/String;Landroid/graphics/Rect;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void

    :cond_4
    move-object/from16 v0, p9

    iget v2, v0, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p9

    iget v3, v0, Landroid/graphics/Point;->y:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    goto/16 :goto_0

    :pswitch_0
    iget v8, v5, Landroid/graphics/Rect;->left:I

    iput v8, v4, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int v2, v8, v2

    iput v2, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    div-int/lit8 v9, v2, 0x2

    sub-int v9, v8, v9

    iput v9, v4, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v8

    iput v2, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :pswitch_2
    iget v8, v5, Landroid/graphics/Rect;->right:I

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v8

    iput v2, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :pswitch_3
    iget v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v4, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :pswitch_4
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v5, v3, 0x2

    sub-int v5, v2, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :pswitch_5
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    iget v2, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected static getVisibleFrom(Ljava/util/List;DDII)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;DDII)I"
        }
    .end annotation

    add-int v0, p6, p5

    shr-int/lit8 v0, v0, 0x1

    move v3, v0

    move v1, p6

    move v2, p5

    :goto_0
    sub-int v0, v1, v2

    const/4 v4, 0x1

    if-gt v0, v4, :cond_0

    add-int/lit8 v0, v2, -0x1

    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    return v0

    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    cmpl-double v0, v4, p1

    if-ltz v0, :cond_1

    add-int/lit8 v0, v2, -0x1

    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    cmpl-double v0, v4, p1

    if-nez v0, :cond_2

    add-int/lit8 v0, v1, -0x1

    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    cmpl-double v0, v4, p1

    if-nez v0, :cond_3

    add-int/lit8 v0, v3, -0x1

    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    cmpg-double v0, v4, p1

    if-gez v0, :cond_4

    add-int/lit8 v0, v3, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_2
    add-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v3, -0x1

    move v1, v2

    goto :goto_2
.end method

.method protected static getVisibleTo(Ljava/util/List;DDII)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;DDII)I"
        }
    .end annotation

    add-int v0, p6, p5

    shr-int/lit8 v0, v0, 0x1

    move v3, v0

    move v1, p6

    move v2, p5

    :goto_0
    sub-int v0, v1, v2

    const/4 v4, 0x1

    if-gt v0, v4, :cond_0

    add-int/lit8 v0, v1, 0x1

    invoke-static {p6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    return v0

    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    cmpl-double v0, v4, p3

    if-nez v0, :cond_1

    add-int/lit8 v0, v2, 0x1

    invoke-static {p6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    cmpg-double v0, v4, p3

    if-gtz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    invoke-static {p6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    cmpl-double v0, v4, p3

    if-nez v0, :cond_3

    add-int/lit8 v0, v3, 0x1

    invoke-static {p6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    cmpg-double v0, v4, p3

    if-gez v0, :cond_4

    add-int/lit8 v0, v3, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_2
    add-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v3, -0x1

    move v1, v2

    goto :goto_2
.end method

.method public static isCompatible(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartType;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object v1

    sget-object v2, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->None:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object v1

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartType;->getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object v2

    if-ne v1, v2, :cond_0

    sget v1, Lcom/artfulbits/aiCharts/Base/ChartType;->a:I

    invoke-virtual {p0, v1}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v1

    sget v2, Lcom/artfulbits/aiCharts/Base/ChartType;->a:I

    invoke-virtual {p1, v2}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public colorPerPoint()Z
    .locals 1

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_COLOR_PER_POINT:I

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v0

    return v0
.end method

.method public abstract draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
.end method

.method protected drawIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartType;->m_iconPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartType;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Paint;Z)V

    return-void
.end method

.method protected drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;)V
    .locals 11

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getFormatedLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getHLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v3

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getVLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v4

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelPadding()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelAngle()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v10

    :goto_0
    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerSize()Landroid/graphics/Point;

    move-result-object v9

    move-object v0, p1

    move-object v1, p3

    invoke-static/range {v0 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Landroid/graphics/PointF;Ljava/lang/String;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;F)V

    return-void

    :cond_0
    move-object v5, v7

    move-object v4, v7

    move-object v3, v7

    move-object v2, v7

    goto :goto_0
.end method

.method protected drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;Landroid/graphics/Point;)V
    .locals 11

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getFormatedLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getHLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v3

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getVLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v4

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelPadding()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelAngle()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v10

    :goto_0
    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v0, p1

    move-object v1, p3

    move-object v9, p4

    invoke-static/range {v0 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Landroid/graphics/PointF;Ljava/lang/String;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;F)V

    return-void

    :cond_0
    move-object v5, v7

    move-object v4, v7

    move-object v3, v7

    move-object v2, v7

    goto :goto_0
.end method

.method protected drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/Point;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getFormatedLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelPadding()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelAngle()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v10

    :cond_0
    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v0, p1

    move-object v1, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v9, p6

    invoke-static/range {v0 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Landroid/graphics/PointF;Ljava/lang/String;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;F)V

    return-void
.end method

.method public drawMarkers(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 11

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    iget-object v1, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v1

    iget-object v3, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v3

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v3

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Base/ChartType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v5

    invoke-static/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Base/ChartType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v2

    :goto_0
    if-gt v5, v2, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v3, v7}, Lcom/artfulbits/aiCharts/Base/ChartType;->getMarkerPoint(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;ILandroid/graphics/PointF;)V

    iget-boolean v3, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Area:Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getView3D()Lcom/artfulbits/aiCharts/Base/View3D;

    move-result-object v3

    iget v4, v7, Landroid/graphics/PointF;->x:F

    iget v6, v7, Landroid/graphics/PointF;->y:F

    iget v8, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v9, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v3, v4, v6, v8, v7}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFFLandroid/graphics/PointF;)Z

    :cond_1
    iget v3, v7, Landroid/graphics/PointF;->x:F

    iget v4, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v3, v4}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->isVisible(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerSize()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v7, v3}, Lcom/artfulbits/aiCharts/Base/ChartType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;Landroid/graphics/Point;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected getMarkerPoint(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;ILandroid/graphics/PointF;)V
    .locals 7

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    invoke-virtual {p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isStacked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ)D

    move-result-wide v3

    :cond_0
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isSideBySide()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getSideBySideOffset()Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->center()D

    move-result-wide v5

    add-double/2addr v1, v5

    :cond_1
    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/artfulbits/aiCharts/Types/ChartTypes;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Cartesian:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    return-object v0
.end method

.method public getRequiredUsages()[Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    const/4 v1, 0x0

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->YValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getXRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartType;->computeXRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V

    return-void
.end method

.method public getYRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v2

    iget v2, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    aput v2, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->computeYRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;[I)V

    return-void
.end method

.method public getZRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->a()Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->set(DD)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_visibleSeries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    int-to-double v0, v0

    add-double/2addr v2, v0

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->set(DD)V

    goto :goto_0
.end method

.method public isCompatible(Lcom/artfulbits/aiCharts/Base/ChartType;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartType;->isCompatible(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartType;)Z

    move-result v0

    return v0
.end method

.method protected isFlags(I)Z
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartType;->m_flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndexed()Z
    .locals 1

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_INDEXED:I

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v0

    return v0
.end method

.method public isOriginDependent()Z
    .locals 1

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_ORIGIN_DEPENDENT:I

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v0

    return v0
.end method

.method public isRotated()Z
    .locals 1

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_ROTATED:I

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v0

    return v0
.end method

.method public isSideBySide()Z
    .locals 1

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_SIDE_BY_SIDE:I

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v0

    return v0
.end method

.method public isStacked()Z
    .locals 1

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_STACKED:I

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v0

    return v0
.end method

.method public isStacked100()Z
    .locals 1

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_STACKED_100:I

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v0

    return v0
.end method

.method public isSupport3D()Z
    .locals 1

    sget v0, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_SUPPORT_3D:I

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v0

    return v0
.end method
