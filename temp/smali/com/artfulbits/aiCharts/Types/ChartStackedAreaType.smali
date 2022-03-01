.class public Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# static fields
.field public static final STACK_GROUP:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;->INTERNAL_STACK_GROUP:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;->STACK_GROUP:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;->FLAG_ORIGIN_DEPENDENT:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;->FLAG_STACKED:I

    or-int/2addr v0, v1

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;->FLAG_SUPPORT_3D:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 17

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v11}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v2

    invoke-virtual {v11}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v1

    iget v12, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

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

    invoke-static/range {v1 .. v7}, Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v6

    invoke-static/range {v1 .. v7}, Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v13

    sub-int v2, v13, v6

    add-int/lit8 v14, v2, 0x1

    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    mul-int/lit8 v2, v14, 0x4

    new-array v0, v2, [F

    move-object/from16 v16, v0

    const/4 v2, 0x0

    move v9, v2

    move v10, v6

    :goto_0
    if-gt v10, v13, :cond_0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v8}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v3

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v12, v2}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ)D

    move-result-wide v5

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 v2, v9, 0x1

    iget v3, v7, Landroid/graphics/PointF;->x:F

    aput v3, v16, v9

    add-int/lit8 v9, v2, 0x1

    iget v3, v7, Landroid/graphics/PointF;->y:F

    aput v3, v16, v2

    invoke-virtual {v8}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v3

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v12, v2}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ)D

    move-result-wide v5

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 v3, v9, 0x1

    iget v2, v7, Landroid/graphics/PointF;->x:F

    aput v2, v16, v9

    add-int/lit8 v2, v3, 0x1

    iget v4, v7, Landroid/graphics/PointF;->y:F

    aput v4, v16, v3

    add-int/lit8 v6, v10, 0x1

    move v9, v2

    move v10, v6

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, p1

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    add-float/2addr v3, v4

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2, v3, v11}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawArea3D([FFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    aget v1, v16, v1

    const/4 v2, 0x1

    aget v2, v16, v2

    invoke-virtual {v15, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x1

    :goto_2
    if-ge v1, v14, :cond_3

    mul-int/lit8 v2, v1, 0x4

    aget v2, v16, v2

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x1

    aget v3, v16, v3

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v14, -0x1

    :goto_3
    if-ltz v1, :cond_4

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x2

    aget v2, v16, v2

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x3

    aget v3, v16, v3

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v15, v11, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    goto :goto_1
.end method
