.class public Lcom/artfulbits/aiCharts/Types/ChartFunnelType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Types/ChartFunnelType$Style;
    }
.end annotation


# static fields
.field public static final GAP_RATIO:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final MINIMAL:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final NECK_HEIGHT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final NECK_WIDTH:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Lcom/artfulbits/aiCharts/Types/ChartFunnelType$Style;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v4, 0x3dcccccd    # 0.1f

    const-string v0, "funnel-style"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;

    const-class v2, Lcom/artfulbits/aiCharts/Types/ChartFunnelType$Style;

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartFunnelType$Style;->YIsHeight:Lcom/artfulbits/aiCharts/Types/ChartFunnelType$Style;

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "funel-minimal"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;

    const-class v2, Ljava/lang/Float;

    const v3, 0x3d4ccccd    # 0.05f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->MINIMAL:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "funel-gap_ratio"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;

    const-class v2, Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->GAP_RATIO:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "funel-neck_width"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;

    const-class v2, Ljava/lang/Float;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->NECK_WIDTH:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "funel-neck_height"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;

    const-class v2, Ljava/lang/Float;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->NECK_HEIGHT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->FLAG_COLOR_PER_POINT:I

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 37

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v4

    iget v12, v4, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v6, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v5, v6}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/artfulbits/aiCharts/Types/ChartFunnelType$Style;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v14, v6

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v15, v6

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float v16, v6, v7

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v7, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->GAP_RATIO:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v6, v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v0, v6

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v7, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->MINIMAL:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v6, v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v0, v6

    move-wide/from16 v19, v0

    const/4 v9, 0x0

    sget-object v6, Lcom/artfulbits/aiCharts/Types/ChartFunnelType$Style;->YIsWidth:Lcom/artfulbits/aiCharts/Types/ChartFunnelType$Style;

    if-ne v5, v6, :cond_4

    const-wide/16 v6, 0x0

    new-instance v5, Lcom/artfulbits/aiCharts/Types/ChartFunnelType$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Lcom/artfulbits/aiCharts/Types/ChartFunnelType$1;-><init>(Lcom/artfulbits/aiCharts/Types/ChartFunnelType;I)V

    invoke-static {v4, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v8, v4

    const/4 v5, 0x0

    move v11, v9

    move-wide v9, v6

    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v6, v4, v5

    invoke-virtual {v6, v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    add-int/lit8 v9, v11, 0x1

    add-int/lit8 v5, v5, 0x1

    move v11, v9

    move-wide v9, v6

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    if-le v11, v5, :cond_c

    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    aget-object v8, v4, v5

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    div-double v22, v22, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v5, v11, -0x2

    int-to-double v0, v5

    move-wide/from16 v24, v0

    mul-double v24, v24, v17

    sub-double v9, v9, v24

    add-int/lit8 v5, v11, -0x1

    int-to-double v0, v5

    move-wide/from16 v24, v0

    div-double v10, v9, v24

    const/4 v5, 0x1

    :goto_1
    array-length v9, v4

    if-ge v5, v9, :cond_c

    aget-object v9, v4, v5

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    float-to-double v0, v15

    move-wide/from16 v26, v0

    mul-double v26, v26, v6

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    float-to-double v0, v15

    move-wide/from16 v25, v0

    mul-double v25, v25, v10

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    add-float v25, v25, v24

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-virtual {v8, v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v28

    mul-double v28, v28, v22

    move-wide/from16 v0, v19

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v27, v0

    invoke-virtual {v9, v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v29

    mul-double v29, v29, v22

    move-wide/from16 v0, v19

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v29

    mul-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-float v0, v0

    move/from16 v27, v0

    sub-float v28, v14, v26

    move-object/from16 v0, v21

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v26, v26, v14

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v26, v14, v27

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v26, v14, v27

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v8, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v8, :cond_1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13, v9}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Path;->reset()V

    add-double v26, v10, v17

    add-double v6, v6, v26

    invoke-virtual {v9}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v9}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_3

    :cond_2
    new-instance v8, Landroid/graphics/PointF;

    const/high16 v26, 0x3f000000    # 0.5f

    add-float v24, v24, v25

    mul-float v24, v24, v26

    move/from16 v0, v24

    invoke-direct {v8, v14, v0}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v8}, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    move-object v8, v9

    goto/16 :goto_1

    :cond_4
    const-wide/16 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v10, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->NECK_HEIGHT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v5, v10}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float v10, v6, v5

    const/4 v6, 0x0

    iget v5, v13, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float v11, v15, v10

    add-float/2addr v11, v5

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v21, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->NECK_WIDTH:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float v21, v16, v5

    new-instance v22, Landroid/graphics/Path;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Path;-><init>()V

    array-length v0, v4

    move/from16 v23, v0

    const/4 v5, 0x0

    :goto_2
    move/from16 v0, v23

    if-ge v5, v0, :cond_5

    aget-object v24, v4, v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    add-double v7, v7, v24

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    const-wide/16 v23, 0x0

    cmpl-double v5, v7, v23

    if-eqz v5, :cond_c

    mul-double v19, v19, v7

    const-wide/16 v7, 0x0

    array-length v0, v4

    move/from16 v23, v0

    const/4 v5, 0x0

    :goto_3
    move/from16 v0, v23

    if-ge v5, v0, :cond_6

    aget-object v24, v4, v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    move-wide/from16 v0, v19

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    add-double v7, v7, v24

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v5, v9, -0x1

    int-to-double v0, v5

    move-wide/from16 v25, v0

    mul-double v25, v25, v17

    sub-double v23, v23, v25

    div-double v7, v23, v7

    array-length v9, v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v9, :cond_c

    aget-object v23, v4, v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    mul-double v24, v24, v7

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v27, v15, v6

    add-float v26, v26, v27

    float-to-double v0, v15

    move-wide/from16 v27, v0

    mul-double v27, v27, v24

    move-wide/from16 v0, v27

    double-to-float v0, v0

    move/from16 v27, v0

    add-float v27, v27, v26

    cmpg-float v28, v27, v11

    if-gez v28, :cond_a

    sub-float v28, v16, v21

    const/high16 v29, 0x3f800000    # 1.0f

    div-float v30, v6, v10

    sub-float v29, v29, v30

    mul-float v28, v28, v29

    add-float v28, v28, v21

    sub-float v29, v16, v21

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v29, v0

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v6

    move-wide/from16 v33, v0

    add-double v33, v33, v24

    float-to-double v0, v10

    move-wide/from16 v35, v0

    div-double v33, v33, v35

    sub-double v31, v31, v33

    mul-double v29, v29, v31

    move-wide/from16 v0, v29

    double-to-float v0, v0

    move/from16 v29, v0

    add-float v29, v29, v21

    sub-float v30, v14, v28

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v28, v28, v14

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v28, v14, v29

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v28, v14, v29

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->close()V

    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    move/from16 v28, v0

    if-eqz v28, :cond_7

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v13, v2}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    float-to-double v0, v6

    move-wide/from16 v28, v0

    add-double v24, v24, v17

    add-double v24, v24, v28

    move-wide/from16 v0, v24

    double-to-float v6, v0

    invoke-virtual/range {v23 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v24

    if-nez v24, :cond_8

    invoke-virtual/range {v23 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    if-eqz v24, :cond_9

    :cond_8
    new-instance v24, Landroid/graphics/PointF;

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v26, v26, v27

    mul-float v25, v25, v26

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v14, v1}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;)V

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :cond_a
    cmpg-float v28, v26, v11

    if-gez v28, :cond_b

    sub-float v28, v16, v21

    const/high16 v29, 0x3f800000    # 1.0f

    div-float v30, v6, v10

    sub-float v29, v29, v30

    mul-float v28, v28, v29

    add-float v28, v28, v21

    sub-float v29, v14, v28

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v28, v28, v14

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v28, v14, v21

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v28, v14, v21

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v28, v14, v21

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v28, v14, v21

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->close()V

    goto/16 :goto_5

    :cond_b
    sub-float v28, v14, v21

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v28, v14, v21

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v28, v14, v21

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v28, v14, v21

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->close()V

    goto/16 :goto_5

    :cond_c
    return-void
.end method

.method public drawMarkers(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 0

    return-void
.end method

.method public getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->None:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    return-object v0
.end method
