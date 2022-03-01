.class public Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType$1;
    }
.end annotation


# static fields
.field public static final SHAPE_3D:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Lcom/artfulbits/aiCharts/Enums/Shape3D;",
            ">;"
        }
    .end annotation
.end field

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

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->INTERNAL_STACK_GROUP:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->STACK_GROUP:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->SHAPE_3D:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->SHAPE_3D:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->FLAG_ORIGIN_DEPENDENT:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->FLAG_SIDE_BY_SIDE:I

    or-int/2addr v0, v1

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->FLAG_STACKED:I

    or-int/2addr v0, v1

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->FLAG_SUPPORT_3D:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 32

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual/range {p1 .. p1}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getSideBySideOffset()Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object v27

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v4

    iget v0, v4, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->isRotated()Z

    move-result v24

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v10, v5, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v5

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v5

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v7

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v7

    const/4 v9, 0x0

    invoke-static/range {v4 .. v10}, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v9

    invoke-static/range {v4 .. v10}, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v29

    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14}, Landroid/graphics/RectF;-><init>()V

    const/4 v5, 0x2

    new-array v0, v5, [D

    move-object/from16 v30, v0

    const/4 v5, 0x2

    new-array v0, v5, [D

    move-object/from16 v31, v0

    move/from16 v26, v9

    :goto_0
    move/from16 v0, v26

    move/from16 v1, v29

    if-gt v0, v1, :cond_8

    move/from16 v0, v26

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual/range {v25 .. v25}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v10

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ[D)V

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v28

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ[D)V

    move-object/from16 v0, v27

    iget-wide v5, v0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    add-double v6, v10, v5

    const/4 v5, 0x0

    aget-wide v8, v31, v5

    move-object/from16 v0, v27

    iget-wide v12, v0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    add-double/2addr v10, v12

    const/4 v5, 0x0

    aget-wide v12, v30, v5

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v14}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getRect(DDDDLandroid/graphics/RectF;)V

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v5, :cond_7

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x1

    aget-wide v7, v31, v7

    sub-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    double-to-float v6, v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x1

    aget-wide v9, v30, v5

    sub-double/2addr v7, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    double-to-float v7, v7

    sget-object v8, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType$1;->a:[I

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->SHAPE_3D:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/artfulbits/aiCharts/Enums/Shape3D;

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Enums/Shape3D;->ordinal()I

    move-result v5

    aget v5, v8, v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v9, v26, 0x1

    move/from16 v26, v9

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget v6, v14, Landroid/graphics/RectF;->left:F

    iget v7, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p1

    iget v8, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v9, v14, Landroid/graphics/RectF;->right:F

    iget v10, v14, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p1

    iget v11, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, p1

    iget v12, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    add-float/2addr v11, v12

    move-object/from16 v12, v25

    invoke-virtual/range {v5 .. v12}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawBox3D(FFFFFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p1

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float v21, v5, v6

    if-eqz v24, :cond_1

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v5

    :goto_2
    const/high16 v6, 0x40000000    # 2.0f

    div-float v20, v5, v6

    if-eqz v24, :cond_2

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v19

    :goto_3
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v16

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v17

    move-object/from16 v0, p1

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    add-float v18, v5, v21

    move/from16 v22, v20

    move/from16 v23, v21

    invoke-virtual/range {v15 .. v25}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawCylinder3D(FFFFFFFFZLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v5

    goto :goto_2

    :cond_2
    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v19

    goto :goto_3

    :pswitch_2
    move-object/from16 v0, p1

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v5, v8

    if-eqz v24, :cond_3

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v5

    :goto_4
    if-eqz v24, :cond_4

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v19

    :goto_5
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v16

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v17

    move-object/from16 v0, p1

    iget v9, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    add-float v18, v9, v8

    mul-float v20, v7, v5

    mul-float v21, v7, v8

    mul-float v22, v6, v5

    mul-float v23, v6, v8

    invoke-virtual/range {v15 .. v25}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawCylinder3D(FFFFFFFFZLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v5

    goto :goto_4

    :cond_4
    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v19

    goto :goto_5

    :pswitch_3
    move-object/from16 v0, p1

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v5, v8

    if-eqz v24, :cond_5

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v5

    :goto_6
    if-eqz v24, :cond_6

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v19

    :goto_7
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v16

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v17

    move-object/from16 v0, p1

    iget v9, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    add-float v18, v9, v8

    mul-float v20, v7, v5

    mul-float v21, v7, v8

    mul-float v22, v6, v5

    mul-float v23, v6, v8

    invoke-virtual/range {v15 .. v25}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPyramid3D(FFFFFFFFZLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v5

    goto :goto_6

    :cond_6
    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v19

    goto :goto_7

    :cond_7
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, v25

    invoke-virtual {v5, v14, v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawRect(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/RectF;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
