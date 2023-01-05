.class public Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$1;,
        Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;
    }
.end annotation


# static fields
.field public static final STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "hiloopenclose-style"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;

    const-class v2, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;->All:Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;->STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;->FLAG_SIDE_BY_SIDE:I

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 52

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual/range {p1 .. p1}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getSideBySideOffset()Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->center()D

    move-result-wide v45

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v5

    iget v0, v5, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    move/from16 v47, v0

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v5

    iget v0, v5, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    move/from16 v48, v0

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v5

    iget v0, v5, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->CloseValueIndex:I

    move/from16 v49, v0

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v5

    iget v0, v5, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->OpenValueIndex:I

    move/from16 v50, v0

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;->STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;->All:Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;

    if-eq v4, v5, :cond_0

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;->OpenOnly:Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;

    if-ne v4, v5, :cond_4

    :cond_0
    const/4 v5, 0x1

    move/from16 v41, v5

    :goto_0
    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;->All:Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;

    if-eq v4, v5, :cond_1

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;->CloseOnly:Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;

    if-ne v4, v5, :cond_5

    :cond_1
    const/4 v4, 0x1

    move/from16 v42, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v9, v4, -0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v4

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v6

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v9}, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v8

    invoke-static/range {v3 .. v9}, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v51

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    new-instance v15, Landroid/graphics/PointF;

    invoke-direct {v15}, Landroid/graphics/PointF;-><init>()V

    new-instance v33, Landroid/graphics/PointF;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/PointF;-><init>()V

    new-instance v39, Landroid/graphics/PointF;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/PointF;-><init>()V

    new-instance v21, Landroid/graphics/PointF;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/PointF;-><init>()V

    new-instance v27, Landroid/graphics/PointF;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/PointF;-><init>()V

    move/from16 v43, v8

    :goto_2
    move/from16 v0, v43

    move/from16 v1, v51

    if-gt v0, v1, :cond_6

    move/from16 v0, v43

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v40, v4

    check-cast v40, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual/range {v40 .. v40}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    add-double v5, v4, v45

    move-object/from16 v0, v40

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v7

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    invoke-virtual/range {v40 .. v40}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    add-double v11, v4, v45

    move-object/from16 v0, v40

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v13

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, v40

    invoke-virtual {v4, v9, v15, v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    if-eqz v41, :cond_2

    invoke-virtual/range {v40 .. v40}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, v44

    iget-wide v6, v0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    add-double v17, v4, v6

    move-object/from16 v0, v40

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v19

    move-object/from16 v16, p1

    invoke-virtual/range {v16 .. v21}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    invoke-virtual/range {v40 .. v40}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    add-double v23, v4, v45

    move-object/from16 v0, v40

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v25

    move-object/from16 v22, p1

    invoke-virtual/range {v22 .. v27}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v40

    invoke-virtual {v4, v0, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    :cond_2
    if-eqz v42, :cond_3

    invoke-virtual/range {v40 .. v40}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, v44

    iget-wide v6, v0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    add-double v29, v4, v6

    move-object/from16 v0, v40

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v31

    move-object/from16 v28, p1

    invoke-virtual/range {v28 .. v33}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    invoke-virtual/range {v40 .. v40}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v4

    add-double v35, v4, v45

    move-object/from16 v0, v40

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v37

    move-object/from16 v34, p1

    invoke-virtual/range {v34 .. v39}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, v33

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v4, v0, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    :cond_3
    add-int/lit8 v8, v43, 0x1

    move/from16 v43, v8

    goto/16 :goto_2

    :cond_4
    const/4 v5, 0x0

    move/from16 v41, v5

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    move/from16 v42, v4

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method public getRequiredUsages()[Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    const/4 v1, 0x0

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->LowValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->HighValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->OpenValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->CloseValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getYRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v2

    const/4 v1, 0x0

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$1;->a:[I

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;->STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;->computeYRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;[I)V

    return-void

    :pswitch_0
    new-array v0, v6, [I

    iget v1, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    aput v1, v0, v4

    iget v1, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    aput v1, v0, v5

    goto :goto_0

    :pswitch_1
    new-array v0, v7, [I

    iget v1, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    aput v1, v0, v4

    iget v1, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    aput v1, v0, v5

    iget v1, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->OpenValueIndex:I

    aput v1, v0, v6

    goto :goto_0

    :pswitch_2
    new-array v0, v7, [I

    iget v1, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    aput v1, v0, v4

    iget v1, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    aput v1, v0, v5

    iget v1, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->CloseValueIndex:I

    aput v1, v0, v6

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    new-array v0, v0, [I

    iget v1, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    aput v1, v0, v4

    iget v1, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    aput v1, v0, v5

    iget v1, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->OpenValueIndex:I

    aput v1, v0, v6

    iget v1, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->CloseValueIndex:I

    aput v1, v0, v7

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
