.class public Lcom/artfulbits/aiCharts/Types/ChartAreaType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# static fields
.field public static final BORDER_STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "border-style"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartAreaType;

    const-class v2, Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

    sget-object v3, Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;->All:Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartAreaType;->BORDER_STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartAreaType;->FLAG_ORIGIN_DEPENDENT:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartAreaType;->FLAG_SUPPORT_3D:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartAreaType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 21

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v15}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v2

    iget v0, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    move/from16 v16, v0

    invoke-virtual {v15}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualYAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getOrigin()D

    move-result-wide v17

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13}, Landroid/graphics/PointF;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v8, v3, -0x1

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

    invoke-static/range {v2 .. v8}, Lcom/artfulbits/aiCharts/Types/ChartAreaType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v7

    invoke-static/range {v2 .. v8}, Lcom/artfulbits/aiCharts/Types/ChartAreaType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v19

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v3, :cond_2

    sub-int v3, v19, v7

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x4

    new-array v12, v3, [F

    const/4 v3, 0x0

    move v10, v7

    move v11, v3

    :goto_0
    move/from16 v0, v19

    if-gt v10, v0, :cond_0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v9}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v6

    move-object/from16 v3, p1

    move-object v8, v13

    invoke-virtual/range {v3 .. v8}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 v3, v11, 0x1

    iget v4, v13, Landroid/graphics/PointF;->x:F

    aput v4, v12, v11

    add-int/lit8 v11, v3, 0x1

    iget v4, v13, Landroid/graphics/PointF;->y:F

    aput v4, v12, v3

    invoke-virtual {v9}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    move-object/from16 v3, p1

    move-wide/from16 v6, v17

    move-object v8, v13

    invoke-virtual/range {v3 .. v8}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 v4, v11, 0x1

    iget v3, v13, Landroid/graphics/PointF;->x:F

    aput v3, v12, v11

    add-int/lit8 v3, v4, 0x1

    iget v5, v13, Landroid/graphics/PointF;->y:F

    aput v5, v12, v4

    add-int/lit8 v7, v10, 0x1

    move v10, v7

    move v11, v3

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, p1

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    add-float/2addr v4, v5

    invoke-virtual {v2, v12, v3, v4, v15}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawArea3D([FFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v4, Lcom/artfulbits/aiCharts/Types/ChartAreaType;->BORDER_STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v3, v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;->Simple:Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    move v6, v3

    :goto_2
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move v14, v7

    :goto_3
    move/from16 v0, v19

    if-gt v14, v0, :cond_5

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v9

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v11

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    if-ne v14, v7, :cond_4

    iget v5, v13, Landroid/graphics/PointF;->x:F

    iget v8, v13, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_4
    add-int/lit8 v5, v14, 0x1

    move v14, v5

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    move v6, v3

    goto :goto_2

    :cond_4
    iget v5, v13, Landroid/graphics/PointF;->x:F

    iget v8, v13, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    :cond_5
    if-eqz v6, :cond_7

    new-instance v2, Landroid/graphics/Path;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    :goto_5
    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v9

    move-object/from16 v8, p1

    move-wide/from16 v11, v17

    invoke-virtual/range {v8 .. v13}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget v4, v13, Landroid/graphics/PointF;->x:F

    iget v5, v13, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v9

    move-object/from16 v8, p1

    move-wide/from16 v11, v17

    invoke-virtual/range {v8 .. v13}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget v3, v13, Landroid/graphics/PointF;->x:F

    iget v4, v13, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3, v15}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    :cond_6
    if-nez v2, :cond_8

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v15, v3}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    :cond_8
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v15, v4}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->fillPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getBorderColor()I

    move-result v4

    invoke-virtual {v3, v2, v15, v4}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->strokePath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;I)V

    goto/16 :goto_1
.end method
