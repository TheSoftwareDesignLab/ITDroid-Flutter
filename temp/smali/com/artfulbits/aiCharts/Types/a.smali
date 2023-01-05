.class abstract Lcom/artfulbits/aiCharts/Types/a;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Types/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/PointF;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Types/a;->a:Landroid/graphics/PointF;

    return-void
.end method

.method public static computeYRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 13

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->size()I

    move-result v10

    if-lez v10, :cond_4

    const-wide v4, -0x10000000000001L

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v8, v1

    :goto_0
    if-ge v8, v10, :cond_3

    invoke-virtual {v9, v8}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->get(I)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY()[D

    move-result-object v11

    move v0, v1

    :goto_1
    array-length v6, v11

    if-ge v0, v6, :cond_2

    aget-wide v6, v11, v0

    cmpl-double v12, v6, v4

    if-lez v12, :cond_0

    move-wide v4, v6

    :cond_0
    cmpg-double v12, v6, v2

    if-gez v12, :cond_1

    move-wide v2, v6

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->set(DD)V

    :cond_4
    return-void
.end method

.method public static computeZRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->get(I)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY()[D

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    invoke-virtual {p2, v2, v3, v0, v1}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->set(DD)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, v2, v3, v2, v3}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->set(DD)V

    goto :goto_0
.end method


# virtual methods
.method protected computePlanes(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)[F
    .locals 9

    const/4 v1, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualYAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    :goto_0
    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->createIterator()Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->current()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->next()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->current()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [F

    iget-boolean v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v0, :cond_2

    move v6, v1

    :goto_1
    array-length v0, v8

    if-ge v6, v0, :cond_3

    const-wide/16 v1, 0x0

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Types/a;->a:Landroid/graphics/PointF;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/a;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    aput v0, v8, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualZAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    goto :goto_0

    :cond_2
    :goto_2
    array-length v0, v8

    if-ge v1, v0, :cond_3

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    aput v0, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v8}, Ljava/util/Arrays;->sort([F)V

    return-object v8
.end method

.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 20

    new-instance v15, Lcom/artfulbits/aiCharts/Types/a$a;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/artfulbits/aiCharts/Types/a$a;-><init>(Lcom/artfulbits/aiCharts/Types/a;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v17, v2, -0x1

    const/16 v2, 0xc

    new-array v6, v2, [F

    invoke-virtual/range {p0 .. p1}, Lcom/artfulbits/aiCharts/Types/a;->computePlanes(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)[F

    move-result-object v18

    const/4 v4, 0x0

    const/4 v2, 0x0

    move v14, v2

    :goto_0
    move/from16 v0, v17

    if-gt v14, v0, :cond_1

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY()[D

    move-result-object v2

    array-length v0, v2

    move/from16 v19, v0

    :goto_1
    move/from16 v0, v19

    if-ge v5, v0, :cond_0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/artfulbits/aiCharts/Types/a;->getPoint(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;I[FI)V

    add-int/lit8 v10, v5, -0x1

    const/4 v12, 0x3

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v4

    move-object v11, v6

    invoke-virtual/range {v7 .. v12}, Lcom/artfulbits/aiCharts/Types/a;->getPoint(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;I[FI)V

    add-int/lit8 v10, v5, -0x1

    const/4 v12, 0x6

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v13

    move-object v11, v6

    invoke-virtual/range {v7 .. v12}, Lcom/artfulbits/aiCharts/Types/a;->getPoint(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;I[FI)V

    const/16 v12, 0x9

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v13

    move v10, v5

    move-object v11, v6

    invoke-virtual/range {v7 .. v12}, Lcom/artfulbits/aiCharts/Types/a;->getPoint(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;I[FI)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v6, v1}, Lcom/artfulbits/aiCharts/Types/a$a;->a(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;[F[F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move-object v4, v13

    goto :goto_0

    :cond_1
    return-void
.end method

.method public drawMarkers(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 0

    return-void
.end method

.method protected abstract drawPolygon(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;[FII)V
.end method

.method protected getPoint(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;I[FI)V
    .locals 6

    iget-boolean v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    invoke-virtual {p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Types/a;->a:Landroid/graphics/PointF;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 v0, p5, 0x1

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Types/a;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aput v1, p4, p5

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Types/a;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, p4, v0

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualZAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-double v2, v0

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualZAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v0

    int-to-double v4, p3

    invoke-virtual {v0, v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    aput v0, p4, v1

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    int-to-double v3, p3

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Types/a;->a:Landroid/graphics/PointF;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 v0, p5, 0x1

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Types/a;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aput v1, p4, p5

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, p4, v0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/a;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    aput v0, p4, v1

    goto :goto_0
.end method

.method public getYRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 1

    invoke-static {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->findArea(Lcom/artfulbits/aiCharts/Base/ChartSeries;)Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getView3D()Lcom/artfulbits/aiCharts/Base/View3D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/View3D;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/artfulbits/aiCharts/Types/a;->computeZRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/artfulbits/aiCharts/Types/a;->computeYRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V

    goto :goto_0
.end method

.method public getZRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 1

    invoke-static {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->findArea(Lcom/artfulbits/aiCharts/Base/ChartSeries;)Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getView3D()Lcom/artfulbits/aiCharts/Base/View3D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/View3D;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/artfulbits/aiCharts/Types/a;->computeYRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/artfulbits/aiCharts/Types/a;->computeZRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V

    goto :goto_0
.end method
