.class public Lcom/artfulbits/aiCharts/Types/ChartRangeAreaType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartRangeAreaType;->FLAG_SUPPORT_3D:I

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartRangeAreaType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 14

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget-object v1, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v1

    iget v10, v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    iget-object v1, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v1

    iget v11, v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

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

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Types/ChartRangeAreaType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v5

    invoke-static/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Types/ChartRangeAreaType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v12

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    sub-int v1, v12, v5

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x4

    new-array v13, v1, [F

    const/4 v1, 0x0

    move v8, v1

    move v9, v5

    :goto_0
    if-gt v9, v12, :cond_0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v2

    invoke-virtual {v7, v10}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v4

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 v1, v8, 0x1

    iget v2, v6, Landroid/graphics/PointF;->x:F

    aput v2, v13, v8

    add-int/lit8 v8, v1, 0x1

    iget v2, v6, Landroid/graphics/PointF;->y:F

    aput v2, v13, v1

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v2

    invoke-virtual {v7, v11}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v4

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 v2, v8, 0x1

    iget v1, v6, Landroid/graphics/PointF;->x:F

    aput v1, v13, v8

    add-int/lit8 v1, v2, 0x1

    iget v3, v6, Landroid/graphics/PointF;->y:F

    aput v3, v13, v2

    add-int/lit8 v5, v9, 0x1

    move v8, v1

    move v9, v5

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget v1, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v2, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v3, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    add-float/2addr v2, v3

    iget-object v3, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawArea3D([FFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v0, 0x0

    aget v0, v13, v0

    const/4 v2, 0x1

    aget v2, v13, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x1

    array-length v2, v13

    div-int/lit8 v2, v2, 0x4

    :goto_2
    if-ge v0, v2, :cond_3

    mul-int/lit8 v3, v0, 0x4

    aget v3, v13, v3

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    aget v4, v13, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    array-length v0, v13

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_4

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x2

    aget v2, v13, v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    aget v3, v13, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-boolean v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {p1, v1, v0, v2}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget-object v2, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    iget-object v3, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    goto :goto_1
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
