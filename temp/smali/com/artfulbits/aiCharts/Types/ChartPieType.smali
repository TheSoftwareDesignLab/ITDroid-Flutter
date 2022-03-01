.class public Lcom/artfulbits/aiCharts/Types/ChartPieType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Types/ChartPieType$a;,
        Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;
    }
.end annotation


# static fields
.field public static final ANGLE_OFFSET:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXPAND_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LABEL_OFFSET:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LABEL_STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final MINIMAL_SIZE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTIMIZE_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final TICK_SIZE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "pie-expand_radius"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;

    const-class v2, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->EXPAND_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-label_style"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;

    const-class v2, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;->Inside:Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->LABEL_STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-angle_offset"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;

    const-class v2, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->ANGLE_OFFSET:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-labels_offset"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;

    const-class v2, Ljava/lang/Float;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->LABEL_OFFSET:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-ticks_size"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;

    const-class v2, Ljava/lang/Integer;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->TICK_SIZE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-minimal_size"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;

    const-class v2, Ljava/lang/Float;

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->MINIMAL_SIZE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-optimize_points"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->OPTIMIZE_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->a:Landroid/graphics/Paint;

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->FLAG_SUPPORT_3D:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;->FLAG_COLOR_PER_POINT:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->m_flags:I

    return-void
.end method


# virtual methods
.method protected computeSectorPath(Landroid/graphics/RectF;FFLandroid/graphics/Path;)V
    .locals 2

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p4, p1, p2, p3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 4

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartPieType;->ANGLE_OFFSET:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/artfulbits/aiCharts/Types/ChartPieType;->drawPie(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Ljava/util/List;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    return-void
.end method

.method protected drawIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->m_iconPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/artfulbits/aiCharts/Types/ChartPieType;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Paint;Z)V

    return-void
.end method

.method public drawMarkers(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 0

    return-void
.end method

.method protected drawPie(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Ljava/util/List;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;",
            "Ljava/util/List",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v3

    iget v0, v3, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    move/from16 v19, v0

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartPieType;->LABEL_STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v7, v3}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    sget-object v4, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;->Inside:Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    if-eq v3, v4, :cond_0

    const/4 v4, 0x1

    move v14, v4

    :goto_0
    sget-object v4, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;->OutsideColumn:Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    move v15, v3

    :goto_1
    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartPieType;->LABEL_OFFSET:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v7, v3}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v20

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartPieType;->MINIMAL_SIZE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v7, v3}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v8, v3, v4

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartPieType;->TICK_SIZE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v7, v3}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, p4

    int-to-float v10, v0

    const-wide/16 v5, 0x0

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartPieType;->OPTIMIZE_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v7, v3}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    div-int/lit8 v7, v18, 0x4

    move v4, v3

    :goto_2
    if-ge v4, v7, :cond_2

    mul-int/lit8 v3, v4, 0x2

    add-int/lit8 v9, v3, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    sub-int v11, v18, v9

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v0, v9, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sub-int v9, v18, v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v9, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    move v14, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move v15, v3

    goto :goto_1

    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerX()I

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerY()I

    move-result v23

    new-instance v24, Landroid/graphics/Rect;

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    new-instance v26, Landroid/graphics/RectF;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/RectF;-><init>()V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    const/4 v4, 0x0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    float-to-int v11, v3

    move/from16 v0, v18

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Types/ChartPieType$a;

    move-object/from16 v27, v0

    const/4 v3, 0x0

    move-wide/from16 v16, v5

    move v6, v4

    move v5, v3

    :goto_3
    move-object/from16 v0, v27

    array-length v3, v0

    if-ge v5, v3, :cond_5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v7

    add-double v7, v7, v16

    sget-object v4, Lcom/artfulbits/aiCharts/Types/ChartPieType;->EXPAND_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v3, v4}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    :cond_3
    new-instance v6, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v3}, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;-><init>(Lcom/artfulbits/aiCharts/Types/ChartPieType;Lcom/artfulbits/aiCharts/Base/ChartPoint;)V

    aput-object v6, v27, v5

    iget v3, v9, Landroid/graphics/Point;->x:I

    aget-object v6, v27, v5

    iget v6, v6, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;->b:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v9, Landroid/graphics/Point;->x:I

    iget v3, v9, Landroid/graphics/Point;->y:I

    aget-object v6, v27, v5

    iget v6, v6, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;->c:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v9, Landroid/graphics/Point;->y:I

    :cond_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v6, v4

    move-wide/from16 v16, v7

    goto :goto_3

    :cond_5
    if-eqz v14, :cond_6

    iget v3, v9, Landroid/graphics/Point;->x:I

    add-int v3, v3, v21

    iget v4, v9, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    add-int v4, v4, v21

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    :cond_6
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v6

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v28

    sub-int v3, v22, v28

    sub-int v4, v23, v28

    add-int v5, v22, v28

    add-int v6, v23, v28

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v29, Landroid/graphics/Path;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Path;-><init>()V

    const/4 v3, 0x0

    move v13, v3

    :goto_4
    move/from16 v0, v18

    if-ge v13, v0, :cond_b

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    const-wide v3, 0x4076800000000000L    # 360.0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v5

    mul-double/2addr v3, v5

    div-double v3, v3, v16

    double-to-float v11, v3

    float-to-double v3, v10

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    float-to-double v7, v11

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    double-to-float v7, v3

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartPieType;->EXPAND_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v12, v3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v4, :cond_9

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    iget v6, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, p1

    iget v8, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v6, v8

    if-eqz v3, :cond_7

    int-to-float v8, v3

    invoke-static {v7}, Landroid/util/FloatMath;->cos(F)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v4, v8

    int-to-float v3, v3

    invoke-static {v7}, Landroid/util/FloatMath;->sin(F)F

    move-result v7

    mul-float/2addr v3, v7

    add-float/2addr v6, v3

    :cond_7
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    move/from16 v0, v28

    int-to-float v8, v0

    move/from16 v0, v28

    int-to-float v9, v0

    invoke-virtual/range {v3 .. v12}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPie3D(FFFFFFFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    :cond_8
    :goto_5
    add-float/2addr v10, v11

    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_4

    :cond_9
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    if-lez v3, :cond_a

    int-to-float v4, v3

    invoke-static {v7}, Landroid/util/FloatMath;->cos(F)F

    move-result v5

    mul-float/2addr v4, v5

    int-to-float v3, v3

    invoke-static {v7}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    mul-float/2addr v3, v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v3}, Landroid/graphics/RectF;->offset(FF)V

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v10, v11, v2}, Lcom/artfulbits/aiCharts/Types/ChartPieType;->computeSectorPath(Landroid/graphics/RectF;FFLandroid/graphics/Path;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v3, v0, v12, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v12}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    if-eqz v14, :cond_f

    move/from16 v0, v28

    int-to-float v3, v0

    move/from16 v18, v3

    :goto_6
    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    div-double v25, v3, v16

    move/from16 v0, p4

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    double-to-float v4, v3

    new-instance v20, Landroid/graphics/PointF;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/PointF;-><init>()V

    new-instance v28, Landroid/graphics/PointF;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/PointF;-><init>()V

    new-instance v29, Landroid/graphics/PointF;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/PointF;-><init>()V

    const/4 v3, 0x0

    move/from16 v16, v3

    move/from16 v17, v4

    :goto_7
    move-object/from16 v0, v27

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_18

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    aget-object v11, v27, v16

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    mul-double v3, v3, v25

    double-to-float v0, v3

    move/from16 v30, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v3, v3, v30

    add-float v3, v3, v17

    float-to-double v3, v3

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    rem-double/2addr v3, v5

    double-to-float v3, v3

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_c

    float-to-double v3, v3

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v3, v5

    double-to-float v3, v3

    :cond_c
    if-eqz v11, :cond_e

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v8, :cond_10

    move/from16 v0, v22

    int-to-double v8, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v31, v0

    mul-double v31, v31, v4

    add-double v8, v8, v31

    double-to-float v8, v8

    move-object/from16 v0, v20

    iput v8, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p1

    iget v8, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, p1

    iget v9, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-double v8, v8

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v31, v0

    mul-double v31, v31, v6

    add-double v8, v8, v31

    double-to-float v8, v8

    move-object/from16 v0, v20

    iput v8, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Area:Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-virtual {v8}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getView3D()Lcom/artfulbits/aiCharts/Base/View3D;

    move-result-object v8

    move-object/from16 v0, v20

    iget v9, v0, Landroid/graphics/PointF;->x:F

    move/from16 v0, v23

    int-to-float v10, v0

    move-object/from16 v0, v20

    iget v13, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v20

    invoke-virtual {v8, v9, v10, v13, v0}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFFLandroid/graphics/PointF;)Z

    :goto_8
    if-eqz v14, :cond_17

    move-object/from16 v0, v20

    iget v8, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v20

    iget v9, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v8, :cond_11

    move/from16 v0, v22

    int-to-double v8, v0

    move/from16 v0, v21

    int-to-float v10, v0

    add-float v10, v10, v18

    float-to-double v0, v10

    move-wide/from16 v31, v0

    mul-double v4, v4, v31

    add-double/2addr v4, v8

    double-to-float v4, v4

    move-object/from16 v0, v20

    iput v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v0, p1

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-double v4, v4

    move/from16 v0, v21

    int-to-float v8, v0

    add-float v8, v8, v18

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move-object/from16 v0, v20

    iput v4, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Area:Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getView3D()Lcom/artfulbits/aiCharts/Base/View3D;

    move-result-object v4

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move/from16 v0, v23

    int-to-float v6, v0

    move-object/from16 v0, v20

    iget v7, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFFLandroid/graphics/PointF;)Z

    :goto_9
    sget-object v10, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v4, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    if-eqz v15, :cond_13

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    float-to-double v4, v3

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_d

    float-to-double v3, v3

    const-wide v5, 0x4012d97c7f3321d2L    # 4.71238898038469

    cmpl-double v3, v3, v5

    if-lez v3, :cond_12

    :cond_d
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v11, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;->b:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/PointF;->x:F

    sget-object v3, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-object v9, v3

    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->a:Landroid/graphics/Paint;

    invoke-virtual {v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getBorderColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->a:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v29

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v28

    iget v6, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v28

    iget v7, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v28

    iget v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v28

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v20

    iget v7, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object v7, v10

    move-object v6, v9

    :goto_b
    iget-object v5, v11, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;->a:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelPadding()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerSize()Landroid/graphics/Point;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, v20

    invoke-static/range {v3 .. v13}, Lcom/artfulbits/aiCharts/Types/ChartPieType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Landroid/graphics/PointF;Ljava/lang/String;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;F)V

    :cond_e
    :goto_c
    add-float v4, v17, v30

    add-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_7

    :cond_f
    move/from16 v0, v28

    int-to-float v3, v0

    mul-float v3, v3, v20

    move/from16 v18, v3

    goto/16 :goto_6

    :cond_10
    move/from16 v0, v22

    int-to-double v8, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v31, v0

    mul-double v31, v31, v4

    add-double v8, v8, v31

    double-to-float v8, v8

    move-object/from16 v0, v20

    iput v8, v0, Landroid/graphics/PointF;->x:F

    move/from16 v0, v23

    int-to-double v8, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v31, v0

    mul-double v31, v31, v6

    add-double v8, v8, v31

    double-to-float v8, v8

    move-object/from16 v0, v20

    iput v8, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_8

    :cond_11
    move/from16 v0, v22

    int-to-double v8, v0

    move/from16 v0, v21

    int-to-float v10, v0

    add-float v10, v10, v18

    float-to-double v0, v10

    move-wide/from16 v31, v0

    mul-double v4, v4, v31

    add-double/2addr v4, v8

    double-to-float v4, v4

    move-object/from16 v0, v20

    iput v4, v0, Landroid/graphics/PointF;->x:F

    move/from16 v0, v23

    int-to-double v4, v0

    move/from16 v0, v21

    int-to-float v8, v0

    add-float v8, v8, v18

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move-object/from16 v0, v20

    iput v4, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_9

    :cond_12
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v11, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;->b:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/PointF;->x:F

    sget-object v3, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-object v9, v3

    goto/16 :goto_a

    :cond_13
    float-to-double v4, v3

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpg-double v4, v4, v6

    if-gez v4, :cond_14

    sget-object v4, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v3, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-object v9, v3

    move-object v10, v4

    :goto_d
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v29

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v20

    iget v7, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/artfulbits/aiCharts/Types/ChartPieType;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object v7, v9

    move-object v6, v10

    goto/16 :goto_b

    :cond_14
    float-to-double v4, v3

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    cmpg-double v4, v4, v6

    if-gez v4, :cond_15

    sget-object v4, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v3, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-object v9, v3

    move-object v10, v4

    goto :goto_d

    :cond_15
    float-to-double v3, v3

    const-wide v5, 0x4012d97c7f3321d2L    # 4.71238898038469

    cmpg-double v3, v3, v5

    if-gez v3, :cond_16

    sget-object v4, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v3, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-object v9, v3

    move-object v10, v4

    goto :goto_d

    :cond_16
    sget-object v4, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v3, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-object v9, v3

    move-object v10, v4

    goto :goto_d

    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v12, v2}, Lcom/artfulbits/aiCharts/Types/ChartPieType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;)V

    goto/16 :goto_c

    :cond_18
    return-object v24
.end method

.method public getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->None:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    return-object v0
.end method
