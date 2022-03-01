.class public Lcom/artfulbits/aiCharts/Types/ChartRangeColumnType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartRangeColumnType;->FLAG_SIDE_BY_SIDE:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartRangeColumnType;->FLAG_SUPPORT_3D:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartRangeColumnType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getSideBySideOffset()Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v2

    iget v15, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v2

    iget v0, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    move/from16 v16, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v7, v2, -0x1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v2

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v4

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/artfulbits/aiCharts/Types/ChartRangeColumnType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v6

    invoke-static/range {v1 .. v7}, Lcom/artfulbits/aiCharts/Types/ChartRangeColumnType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v17

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    move v13, v6

    :goto_0
    move/from16 v0, v17

    if-gt v13, v0, :cond_3

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v2

    iget-wide v4, v14, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    add-double v3, v2, v4

    invoke-virtual {v12, v15}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v5

    invoke-virtual {v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v7

    iget-wide v9, v14, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    add-double/2addr v7, v9

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v9

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v11}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getRect(DDDDLandroid/graphics/RectF;)V

    invoke-virtual {v11}, Landroid/graphics/RectF;->sort()V

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/RectF;Ljava/lang/Object;)V

    :cond_0
    iget v2, v11, Landroid/graphics/RectF;->left:F

    iget v3, v11, Landroid/graphics/RectF;->top:F

    iget v4, v11, Landroid/graphics/RectF;->right:F

    iget v5, v11, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->isVisible(FFFF)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget v3, v11, Landroid/graphics/RectF;->left:F

    iget v4, v11, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p1

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v6, v11, Landroid/graphics/RectF;->right:F

    iget v7, v11, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p1

    iget v8, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, p1

    iget v9, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    add-float/2addr v8, v9

    move-object v9, v12

    invoke-virtual/range {v2 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawBox3D(FFFFFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    :cond_1
    :goto_1
    add-int/lit8 v6, v13, 0x1

    move v13, v6

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v2, v11, v12}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawRect(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getRequiredUsages()[Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    const/4 v1, 0x0

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->LowValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->HighValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getYRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 4

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    aput v0, v1, v2

    invoke-static {p0, p1, p2, v1}, Lcom/artfulbits/aiCharts/Base/ChartType;->computeYRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;[I)V

    return-void
.end method
