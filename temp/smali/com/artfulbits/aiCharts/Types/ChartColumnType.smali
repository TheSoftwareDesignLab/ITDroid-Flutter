.class public Lcom/artfulbits/aiCharts/Types/ChartColumnType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Types/ChartColumnType$1;
    }
.end annotation


# static fields
.field public static final MARKER_ALIGN:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Lcom/artfulbits/aiCharts/Enums/Alignment;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "column-shape"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartColumnType;

    const-class v2, Lcom/artfulbits/aiCharts/Enums/Shape3D;

    sget-object v3, Lcom/artfulbits/aiCharts/Enums/Shape3D;->Box:Lcom/artfulbits/aiCharts/Enums/Shape3D;

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->SHAPE_3D:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "column-label_align"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartColumnType;

    const-class v2, Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v3, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->MARKER_ALIGN:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->FLAG_SIDE_BY_SIDE:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->FLAG_ORIGIN_DEPENDENT:I

    or-int/2addr v0, v1

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->FLAG_SUPPORT_3D:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 28

    invoke-virtual/range {p1 .. p1}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getSideBySideOffset()Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v2

    iget v0, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->isRotated()Z

    move-result v12

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v8, v3, -0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualYAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getOrigin()D

    move-result-wide v21

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

    invoke-static/range {v2 .. v8}, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v7

    invoke-static/range {v2 .. v8}, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v27

    new-instance v23, Landroid/graphics/RectF;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/RectF;-><init>()V

    move/from16 v24, v7

    :goto_0
    move/from16 v0, v24

    move/from16 v1, v27

    if-gt v0, v1, :cond_8

    move/from16 v0, v24

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v3

    move-object/from16 v0, v25

    iget-wide v5, v0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    add-double v15, v3, v5

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v17

    invoke-virtual {v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v3

    move-object/from16 v0, v25

    iget-wide v5, v0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    add-double v19, v3, v5

    move-object/from16 v14, p1

    invoke-virtual/range {v14 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getRect(DDDDLandroid/graphics/RectF;)V

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->isVisible(FFFF)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v3, :cond_7

    sget-object v4, Lcom/artfulbits/aiCharts/Types/ChartColumnType$1;->b:[I

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->SHAPE_3D:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v13, v3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artfulbits/aiCharts/Enums/Shape3D;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Enums/Shape3D;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v7, v24, 0x1

    move/from16 v24, v7

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p1

    iget v6, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, v23

    iget v7, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p1

    iget v9, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, p1

    iget v10, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    add-float/2addr v9, v10

    move-object v10, v13

    invoke-virtual/range {v3 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawBox3D(FFFFFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p1

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v9, v3, v4

    if-eqz v12, :cond_1

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v3

    :goto_2
    const/high16 v4, 0x40000000    # 2.0f

    div-float v8, v3, v4

    if-eqz v12, :cond_2

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v7

    :goto_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object/from16 v0, p1

    iget v6, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    add-float/2addr v6, v9

    move v10, v8

    move v11, v9

    invoke-virtual/range {v3 .. v13}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawCylinder3D(FFFFFFFFZLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_1

    :cond_1
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v3

    goto :goto_2

    :cond_2
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v7

    goto :goto_3

    :pswitch_2
    move-object/from16 v0, p1

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v9, v3, v4

    if-eqz v12, :cond_3

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v3

    :goto_4
    const/high16 v4, 0x40000000    # 2.0f

    div-float v8, v3, v4

    if-eqz v12, :cond_4

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v7

    :goto_5
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object/from16 v0, p1

    iget v6, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    add-float/2addr v6, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawCylinder3D(FFFFFFFFZLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v3

    goto :goto_4

    :cond_4
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v7

    goto :goto_5

    :pswitch_3
    move-object/from16 v0, p1

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v9, v3, v4

    if-eqz v12, :cond_5

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v3

    :goto_6
    const/high16 v4, 0x40000000    # 2.0f

    div-float v8, v3, v4

    if-eqz v12, :cond_6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v7

    :goto_7
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object/from16 v0, p1

    iget v6, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    add-float/2addr v6, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPyramid3D(FFFFFFFFZLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v3

    goto :goto_6

    :cond_6
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v7

    goto :goto_7

    :cond_7
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0, v13}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawRect(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/RectF;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getMarkerPoint(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;ILandroid/graphics/PointF;)V
    .locals 9

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartColumnType$1;->a:[I

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->MARKER_ALIGN:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {p2, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Enums/Alignment;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getSideBySideOffset()Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->center()D

    move-result-wide v5

    add-double/2addr v1, v5

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    return-void

    :pswitch_0
    invoke-virtual {p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    goto :goto_0

    :pswitch_1
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualYAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getOrigin()D

    move-result-wide v5

    invoke-virtual {p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v7

    add-double/2addr v5, v7

    mul-double/2addr v3, v5

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualYAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getOrigin()D

    move-result-wide v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
