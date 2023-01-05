.class public Lcom/artfulbits/aiCharts/Types/ChartSplineType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# static fields
.field public static final HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SORTED_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final TENSION:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->SORTED_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->SORTED_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "spline_tension"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartSplineType;

    const-class v2, Ljava/lang/Float;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->TENSION:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    return-void
.end method


# virtual methods
.method protected createSpline([FF)Landroid/graphics/Path;
    .locals 14

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float v9, v0, p2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    move v7, v0

    :goto_0
    array-length v0, p1

    div-int/lit8 v2, v0, 0x2

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x1

    add-int/lit8 v10, v2, -0x1

    move v8, v1

    :goto_1
    if-gt v8, v10, :cond_3

    add-int/lit8 v1, v8, -0x1

    mul-int/lit8 v5, v1, 0x2

    mul-int/lit8 v6, v8, 0x2

    const/4 v1, 0x1

    if-ne v8, v1, :cond_1

    move v2, v5

    :goto_2
    if-ne v8, v10, :cond_2

    move v4, v6

    :goto_3
    aget v1, p1, v5

    mul-float/2addr v1, v9

    const/high16 v3, 0x3f800000    # 1.0f

    aget v11, p1, v6

    aget v12, p1, v2

    sub-float/2addr v11, v12

    mul-float/2addr v3, v11

    add-float/2addr v1, v3

    mul-float/2addr v1, v7

    add-int/lit8 v3, v5, 0x1

    aget v3, p1, v3

    mul-float/2addr v3, v9

    const/high16 v11, 0x3f800000    # 1.0f

    add-int/lit8 v12, v6, 0x1

    aget v12, p1, v12

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    sub-float v2, v12, v2

    mul-float/2addr v2, v11

    add-float/2addr v2, v3

    mul-float/2addr v2, v7

    aget v3, p1, v6

    mul-float/2addr v3, v9

    const/high16 v11, 0x3f800000    # 1.0f

    aget v12, p1, v4

    aget v13, p1, v5

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    sub-float/2addr v3, v11

    mul-float/2addr v3, v7

    add-int/lit8 v11, v6, 0x1

    aget v11, p1, v11

    mul-float/2addr v11, v9

    const/high16 v12, 0x3f800000    # 1.0f

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    add-int/lit8 v5, v5, 0x1

    aget v5, p1, v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v12

    sub-float v4, v11, v4

    mul-float/2addr v4, v7

    aget v5, p1, v6

    add-int/lit8 v6, v6, 0x1

    aget v6, p1, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, v9

    move v7, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v8, -0x2

    mul-int/lit8 v1, v1, 0x2

    move v2, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v8, 0x1

    mul-int/lit8 v1, v1, 0x2

    move v4, v1

    goto :goto_3

    :cond_3
    return-object v0
.end method

.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 19

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v12}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v2

    iget v13, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    sget-object v2, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->SORTED_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v12, v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v12}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v12, v3}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->TENSION:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v12, v3}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v15

    new-instance v16, Landroid/graphics/Path;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Path;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v8, v3, -0x1

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v3

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v5

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v5

    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v7

    invoke-static/range {v2 .. v8}, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v8

    :cond_0
    add-int/lit8 v3, v7, -0x1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v8, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    sub-int v4, v17, v3

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v18, v0

    const/4 v4, 0x0

    move v10, v3

    move v11, v4

    :goto_1
    move/from16 v0, v17

    if-gt v10, v0, :cond_3

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v9}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    invoke-virtual {v9, v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v6

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 v3, v11, 0x1

    iget v4, v8, Landroid/graphics/PointF;->x:F

    aput v4, v18, v11

    add-int/lit8 v4, v3, 0x1

    iget v5, v8, Landroid/graphics/PointF;->y:F

    aput v5, v18, v3

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v3, :cond_1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Path;->reset()V

    iget v3, v8, Landroid/graphics/PointF;->x:F

    iget v5, v8, Landroid/graphics/PointF;->y:F

    int-to-float v6, v14

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3, v9}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    move v11, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v12}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v2

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, p1

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    add-float v6, v3, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getBackColor()I

    move-result v7

    move-object/from16 v3, v18

    move v4, v15

    invoke-virtual/range {v2 .. v7}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawSpline3D([FFFFI)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->createSpline([FF)Landroid/graphics/Path;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v3, v2, v12}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->strokePath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_2
.end method

.method protected drawIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->m_iconPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Paint;Z)V

    return-void
.end method
