.class public final Lcom/artfulbits/aiCharts/Base/ChartArea;
.super Lcom/artfulbits/aiCharts/Base/f;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/ILayout$IElement;
.implements Lcom/artfulbits/aiCharts/Base/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/ChartArea$2;
    }
.end annotation


# static fields
.field protected static final FLAG_ALL:I = 0x3

.field protected static final FLAG_NONE:I = 0x0

.field protected static final FLAG_REFRESH:I = 0x2

.field protected static final FLAG_RELAYOUT:I = 0x1


# instance fields
.field protected final Regions:Lcom/artfulbits/aiCharts/Base/j;

.field private a:Ljava/lang/String;

.field private b:Lcom/artfulbits/aiCharts/Base/ChartAxis;

.field private c:Lcom/artfulbits/aiCharts/Base/ChartAxis;

.field private d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

.field private e:Lcom/artfulbits/aiCharts/Base/ChartCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCollection",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartAxis;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private final h:Lcom/artfulbits/aiCharts/Base/View3D;

.field private i:D

.field private final j:Lcom/artfulbits/aiCharts/Base/l;

.field private k:Z

.field private final l:Landroid/graphics/Rect;

.field private final m:Landroid/graphics/Rect;

.field protected m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

.field protected final m_visibleSeries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartSeries;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroid/graphics/Rect;

.field private o:Z

.field private p:Lcom/artfulbits/aiCharts/Base/ChartEngine;

.field private q:Z

.field private r:I

.field private final s:Lcom/artfulbits/aiCharts/Base/p;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->Bottom:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    invoke-direct {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;-><init>(Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;)V

    new-instance v1, Lcom/artfulbits/aiCharts/Base/ChartAxis;

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->Left:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    invoke-direct {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;-><init>(Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;)V

    invoke-direct {p0, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartArea;-><init>(Lcom/artfulbits/aiCharts/Base/ChartAxis;Lcom/artfulbits/aiCharts/Base/ChartAxis;)V

    return-void
.end method

.method public constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartAxis;Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
    .locals 2

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->ZAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    invoke-direct {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;-><init>(Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;-><init>(Lcom/artfulbits/aiCharts/Base/ChartAxis;Lcom/artfulbits/aiCharts/Base/ChartAxis;Lcom/artfulbits/aiCharts/Base/ChartAxis;)V

    return-void
.end method

.method public constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartAxis;Lcom/artfulbits/aiCharts/Base/ChartAxis;Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/f;-><init>()V

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->b:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->c:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->e:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->f:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->g:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_visibleSeries:Ljava/util/ArrayList;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->i:D

    new-instance v0, Lcom/artfulbits/aiCharts/Base/l;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/l;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->j:Lcom/artfulbits/aiCharts/Base/l;

    iput-boolean v4, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->k:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->l:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    iput-boolean v3, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->o:Z

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->p:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    iput-boolean v4, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->q:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->r:I

    new-instance v0, Lcom/artfulbits/aiCharts/Base/j;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/j;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->Regions:Lcom/artfulbits/aiCharts/Base/j;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/a;

    invoke-direct {v0, p0}, Lcom/artfulbits/aiCharts/Base/a;-><init>(Lcom/artfulbits/aiCharts/Base/ChartArea;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->s:Lcom/artfulbits/aiCharts/Base/p;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-direct {v0, p0}, Lcom/artfulbits/aiCharts/Base/View3D;-><init>(Lcom/artfulbits/aiCharts/Base/ChartArea;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartCollection;

    new-instance v1, Lcom/artfulbits/aiCharts/Base/ChartArea$1;

    invoke-direct {v1, p0}, Lcom/artfulbits/aiCharts/Base/ChartArea$1;-><init>(Lcom/artfulbits/aiCharts/Base/ChartArea;)V

    invoke-direct {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;-><init>(Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->e:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->b:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    iput-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->c:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    iput-object p3, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->e:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->b:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->e:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->c:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->e:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartArea;-><init>()V

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartArea;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private a(IIII)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartType;->getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object v4

    sub-int v10, p3, p1

    sub-int v11, p4, p2

    sget-object v5, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Cartesian:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    if-ne v4, v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/View3D;->getMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/artfulbits/aiCharts/Base/View3D;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move/from16 v0, p1

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/View3D;->d()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 p1, v0

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/artfulbits/aiCharts/Base/View3D;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move/from16 v0, p3

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/View3D;->d()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 p3, v0

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/artfulbits/aiCharts/Base/View3D;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move/from16 v0, p2

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/View3D;->e()F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 p2, v0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/artfulbits/aiCharts/Base/View3D;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move/from16 v0, p4

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/View3D;->e()F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 p4, v0

    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->e:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->size()I

    move-result v12

    move v9, v4

    move/from16 v5, p4

    move/from16 v6, p3

    move/from16 v7, p2

    move/from16 v8, p1

    :goto_0
    if-ge v9, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->e:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v4, v9}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_4

    sget-object v13, Lcom/artfulbits/aiCharts/Base/ChartArea$2;->a:[I

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getPosition()Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    move-result-object v14

    invoke-virtual {v14}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    invoke-virtual {v4, v10, v11}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->measureCartesian(II)F

    :cond_4
    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    :goto_1
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    goto :goto_0

    :pswitch_0
    int-to-float v8, v8

    invoke-virtual {v4, v10, v11}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->measureCartesian(II)F

    move-result v4

    add-float/2addr v4, v8

    float-to-int v4, v4

    move v15, v5

    move v5, v6

    move v6, v7

    move v7, v4

    move v4, v15

    goto :goto_1

    :pswitch_1
    int-to-float v7, v7

    invoke-virtual {v4, v10, v11}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->measureCartesian(II)F

    move-result v4

    add-float/2addr v4, v7

    float-to-int v4, v4

    move v7, v8

    move v15, v6

    move v6, v4

    move v4, v5

    move v5, v15

    goto :goto_1

    :pswitch_2
    int-to-float v6, v6

    invoke-virtual {v4, v10, v11}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->measureCartesian(II)F

    move-result v4

    sub-float v4, v6, v4

    float-to-int v4, v4

    move v6, v7

    move v7, v8

    move v15, v5

    move v5, v4

    move v4, v15

    goto :goto_1

    :pswitch_3
    int-to-float v5, v5

    invoke-virtual {v4, v10, v11}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->measureCartesian(II)F

    move-result v4

    sub-float v4, v5, v4

    float-to-int v4, v4

    move v5, v6

    move v6, v7

    move v7, v8

    goto :goto_1

    :pswitch_4
    invoke-virtual {v4, v10, v11}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->measureCartesian(II)F

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    invoke-virtual {v4, v8, v7, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    return-void

    :cond_6
    sget-object v5, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Polar:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    if-ne v4, v5, :cond_9

    shr-int/lit8 v6, v10, 0x1

    shr-int/lit8 v7, v11, 0x1

    add-int v8, p1, v6

    add-int v9, p2, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->b:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->b:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    int-to-float v5, v10

    int-to-float v10, v11

    invoke-virtual {v4, v5, v10}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->measurePolar(FF)F

    move-result v4

    float-to-int v4, v4

    move v5, v4

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->e:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->b:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    if-eq v4, v11, :cond_7

    invoke-virtual {v4, v6, v7}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->measureCartesian(II)F

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    sub-int v6, v8, v5

    sub-int v7, v9, v5

    add-int/2addr v8, v5

    add-int/2addr v5, v9

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_a
    move v5, v4

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->e:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->size()I

    move-result v3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->e:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0, v2}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-static {v0, p3}, Lcom/artfulbits/aiCharts/Base/ChartArea;->isVisible(Lcom/artfulbits/aiCharts/Base/ChartAxis;I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->drawCartesianGrid(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v1, v3, :cond_4

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->e:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-static {v0, p3}, Lcom/artfulbits/aiCharts/Base/ChartArea;->isVisible(Lcom/artfulbits/aiCharts/Base/ChartAxis;I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->drawStriplines(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Lcom/artfulbits/aiCharts/Base/ChartGraph;)[Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;
    .locals 7

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_visibleSeries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/View3D;->f()F

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_visibleSeries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    invoke-static {p1, v0, v4}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->create(Landroid/graphics/Canvas;Lcom/artfulbits/aiCharts/Base/ChartSeries;Landroid/graphics/Rect;)Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;

    move-result-object v0

    iput-object p2, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iput v3, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->j:Lcom/artfulbits/aiCharts/Base/l;

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v5, v6}, Lcom/artfulbits/aiCharts/Base/l;->a(Lcom/artfulbits/aiCharts/Base/ChartSeries;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/artfulbits/aiCharts/Base/View3D;->b(I)F

    move-result v4

    iput v4, v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private d()V
    .locals 14

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object v0

    sget-object v5, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Cartesian:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    if-ne v0, v5, :cond_1

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->e:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->size()I

    move-result v6

    move v5, v0

    :goto_0
    if-ge v5, v6, :cond_4

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->e:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0, v5}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/artfulbits/aiCharts/Base/ChartArea$2;->a:[I

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getPosition()Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    move-result-object v8

    invoke-virtual {v8}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_1
    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    :pswitch_0
    iget v7, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->dimention:F

    sub-float v7, v4, v7

    iget-object v8, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-virtual {v0, v7, v8, v4, v9}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->layoutCartesian(FFFF)V

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->dimention:F

    sub-float v0, v4, v0

    move v13, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move v0, v13

    goto :goto_2

    :pswitch_1
    iget-object v7, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->dimention:F

    sub-float v8, v3, v8

    iget-object v9, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    invoke-virtual {v0, v7, v8, v9, v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->layoutCartesian(FFFF)V

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->dimention:F

    sub-float v0, v3, v0

    move v3, v4

    move v13, v2

    move v2, v0

    move v0, v1

    move v1, v13

    goto :goto_2

    :pswitch_2
    iget-object v7, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget v8, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->dimention:F

    add-float/2addr v8, v2

    iget-object v9, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-virtual {v0, v2, v7, v8, v9}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->layoutCartesian(FFFF)V

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->dimention:F

    add-float/2addr v0, v2

    move v2, v3

    move v3, v4

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_2

    :pswitch_3
    iget-object v7, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget v9, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->dimention:F

    add-float/2addr v9, v1

    invoke-virtual {v0, v7, v1, v8, v9}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->layoutCartesian(FFFF)V

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->dimention:F

    add-float/2addr v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    goto :goto_2

    :pswitch_4
    iget-object v7, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->dimention:F

    add-float/2addr v10, v11

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->layoutCartesian(FFFF)V

    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_2

    :pswitch_5
    iget-object v7, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->dimention:F

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->layoutCartesian(FFFF)V

    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_2

    :pswitch_6
    iget-object v7, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/View3D;->c()F

    move-result v7

    iget v8, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->dimention:F

    invoke-virtual {v0, v12, v12, v7, v8}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->layoutCartesian(FFFF)V

    goto/16 :goto_1

    :cond_1
    sget-object v5, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Polar:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    if-ne v0, v5, :cond_4

    sub-float v0, v2, v4

    div-float v5, v0, v6

    sub-float v0, v1, v3

    div-float v6, v0, v6

    add-float v7, v4, v5

    add-float v8, v3, v6

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->b:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->b:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0, v4, v3, v2, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->layoutPolar(FFFF)V

    :cond_2
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->e:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->b:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    if-eq v0, v2, :cond_3

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getPosition()Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    move-result-object v2

    sget-object v3, Lcom/artfulbits/aiCharts/Base/ChartArea$2;->a:[I

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_7
    iget v2, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->dimention:F

    sub-float v2, v7, v2

    sub-float v3, v8, v6

    invoke-virtual {v0, v2, v3, v7, v8}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->layoutCartesian(FFFF)V

    goto :goto_3

    :pswitch_8
    iget v2, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->dimention:F

    sub-float v2, v8, v2

    add-float v3, v7, v5

    invoke-virtual {v0, v7, v2, v3, v8}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->layoutCartesian(FFFF)V

    goto :goto_3

    :pswitch_9
    add-float v2, v7, v5

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->dimention:F

    add-float/2addr v3, v8

    invoke-virtual {v0, v7, v8, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->layoutCartesian(FFFF)V

    goto :goto_3

    :pswitch_a
    sub-float v2, v8, v6

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/ChartAxis;->dimention:F

    add-float/2addr v3, v7

    invoke-virtual {v0, v7, v2, v3, v8}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->layoutCartesian(FFFF)V

    goto :goto_3

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method protected static isVisible(Lcom/artfulbits/aiCharts/Base/ChartAxis;I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getPosition()Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    move-result-object v2

    iget-boolean v3, v2, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsZAxis:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v1, :cond_2

    iget-boolean v0, v2, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsVertical:Z

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    iget-boolean v2, v2, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsVertical:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/artfulbits/aiCharts/Base/l;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->j:Lcom/artfulbits/aiCharts/Base/l;

    return-object v0
.end method

.method final b()D
    .locals 14

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->i:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_visibleSeries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v4

    :goto_0
    if-ge v6, v7, :cond_2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_visibleSeries:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v8

    const/4 v0, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v3, v4

    move-object v5, v0

    :goto_1
    if-ge v3, v9, :cond_1

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    if-eqz v5, :cond_0

    iget-wide v10, v5, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    iget-wide v12, v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_0

    iget-wide v10, v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    iget-wide v12, v5, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    sub-double/2addr v10, v12

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move-object v5, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    iput-wide v1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->i:D

    :cond_3
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->i:D

    return-wide v0
.end method

.method final c()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/View3D;->getMode()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->ensureRefresh()V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isSupport3D()Z

    move-result v0

    goto :goto_0
.end method

.method protected final doLayout(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->ensureRefresh()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->d()V

    return-void
.end method

.method protected final draw(Lcom/artfulbits/aiCharts/Base/ChartGraph;)V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->ensureLayout()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->Regions:Lcom/artfulbits/aiCharts/Base/j;

    iget-object v3, v2, Lcom/artfulbits/aiCharts/Base/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v2, Lcom/artfulbits/aiCharts/Base/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/artfulbits/aiCharts/Base/j;->c:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->c()Z

    move-result v17

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a(Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/View3D;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->Regions:Lcom/artfulbits/aiCharts/Base/j;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a(Lcom/artfulbits/aiCharts/Base/j;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->f:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartType;->getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->e:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->size()I

    move-result v19

    sget-object v2, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Cartesian:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-object/from16 v0, v16

    if-ne v0, v2, :cond_9

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Lcom/artfulbits/aiCharts/Base/View3D;->a(I)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/View3D;->c()F

    move-result v2

    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->save(I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v5, v3, v2}, Lcom/artfulbits/aiCharts/Base/View3D;->a(Landroid/graphics/Canvas;F)Landroid/graphics/Matrix;

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v2}, Lcom/artfulbits/aiCharts/Base/ChartArea;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/artfulbits/aiCharts/Base/View3D;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move v14, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/artfulbits/aiCharts/Base/View3D;->a(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, v15, Landroid/graphics/Rect;->left:I

    int-to-float v5, v2

    :goto_2
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/View3D;->d()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v6

    if-lez v2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->save(I)I

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/View3D;->c()F

    move-result v7

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v4, v2, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    iget v6, v15, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v10}, Lcom/artfulbits/aiCharts/Base/View3D;->c()F

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Lcom/artfulbits/aiCharts/Base/View3D;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFFFFFFF)Landroid/graphics/Matrix;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lcom/artfulbits/aiCharts/Base/ChartArea;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/View3D;->e()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->save(I)I

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/View3D;->c()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    iget v5, v15, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    const/4 v7, 0x0

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/View3D;->c()F

    move-result v13

    move v6, v14

    invoke-virtual/range {v2 .. v13}, Lcom/artfulbits/aiCharts/Base/View3D;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFFFFFFF)Landroid/graphics/Matrix;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lcom/artfulbits/aiCharts/Base/ChartArea;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/artfulbits/aiCharts/Base/ChartArea;->a(Landroid/graphics/Canvas;Lcom/artfulbits/aiCharts/Base/ChartGraph;)[Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;

    move-result-object v20

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->save(I)I

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_5
    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, v20

    array-length v4, v0

    if-ge v2, v4, :cond_e

    aget-object v4, v20, v2

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->draw()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    iget v2, v15, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move v14, v2

    goto/16 :goto_1

    :cond_8
    iget v2, v15, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    goto/16 :goto_2

    :cond_9
    sget-object v2, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Polar:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-object/from16 v0, v16

    if-ne v0, v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartType;->isIndexed()Z

    move-result v2

    move v4, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->save(I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->b:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    invoke-virtual {v2, v5, v4}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getGridClipPath(Landroid/graphics/Rect;Z)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->g:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    const/4 v2, 0x0

    move v5, v2

    :goto_5
    move/from16 v0, v19

    if-ge v5, v0, :cond_4

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getGridVisible()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getPosition()Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    move-result-object v6

    iget-boolean v6, v6, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsZAxis:Z

    if-nez v6, :cond_b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->b:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    if-ne v2, v6, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v6}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->drawPolarXGrid(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_b
    :goto_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_5

    :cond_c
    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->b:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v2, v3, v6, v7}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->drawRadarYGrid(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartAxis;)V

    goto :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v6}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->drawPolarYGrid(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_e
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    sget-object v2, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Cartesian:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-object/from16 v0, v16

    if-ne v0, v2, :cond_19

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-nez v2, :cond_11

    const/4 v2, 0x0

    move v15, v2

    :goto_7
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_8
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v14}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    if-eqz v17, :cond_18

    invoke-virtual {v14}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getPosition()Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    move-result-object v2

    iget-boolean v2, v2, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsZAxis:Z

    if-eqz v2, :cond_12

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v14}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getBounds()Landroid/graphics/RectF;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v10}, Lcom/artfulbits/aiCharts/Base/View3D;->c()F

    move-result v10

    const/4 v11, 0x0

    iget v12, v14, Lcom/artfulbits/aiCharts/Base/ChartAxis;->dimention:F

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Lcom/artfulbits/aiCharts/Base/View3D;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFFFFFFF)Landroid/graphics/Matrix;

    move-result-object v2

    :goto_9
    invoke-virtual {v14, v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->drawCartesian(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->Regions:Lcom/artfulbits/aiCharts/Base/j;

    invoke-virtual {v14}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getBounds()Landroid/graphics/RectF;

    move-result-object v5

    new-instance v6, Landroid/graphics/Region;

    iget v7, v5, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iget v9, v5, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v6, v7, v8, v9, v5}, Landroid/graphics/Region;-><init>(IIII)V

    new-instance v5, Lcom/artfulbits/aiCharts/Base/j$a;

    invoke-direct {v5}, Lcom/artfulbits/aiCharts/Base/j$a;-><init>()V

    iput-object v6, v5, Lcom/artfulbits/aiCharts/Base/j$a;->a:Landroid/graphics/Region;

    iput-object v14, v5, Lcom/artfulbits/aiCharts/Base/j$a;->c:Ljava/lang/Object;

    if-eqz v2, :cond_f

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v5, Lcom/artfulbits/aiCharts/Base/j$a;->b:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    :cond_f
    iget-object v4, v4, Lcom/artfulbits/aiCharts/Base/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    move-object v4, v2

    :cond_10
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto/16 :goto_8

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v2

    sget v5, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_Z_AXIS:I

    invoke-virtual {v2, v5}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v2

    move v15, v2

    goto/16 :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/View3D;->getMode()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/artfulbits/aiCharts/Base/View3D;->a(I)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v4, v3, v2}, Lcom/artfulbits/aiCharts/Base/View3D;->a(Landroid/graphics/Canvas;F)Landroid/graphics/Matrix;

    move-result-object v2

    goto :goto_9

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/View3D;->c()F

    move-result v2

    goto :goto_a

    :cond_14
    invoke-virtual {v14}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getPosition()Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    move-result-object v2

    iget-boolean v2, v2, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsVertical:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/artfulbits/aiCharts/Base/View3D;->a(I)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/artfulbits/aiCharts/Base/View3D;->a(Landroid/graphics/Canvas;F)Landroid/graphics/Matrix;

    move-result-object v2

    goto/16 :goto_9

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/View3D;->c()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/artfulbits/aiCharts/Base/View3D;->a(Landroid/graphics/Canvas;F)Landroid/graphics/Matrix;

    move-result-object v2

    goto/16 :goto_9

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/artfulbits/aiCharts/Base/View3D;->a(I)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/artfulbits/aiCharts/Base/View3D;->a(Landroid/graphics/Canvas;F)Landroid/graphics/Matrix;

    move-result-object v2

    goto/16 :goto_9

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/View3D;->c()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/artfulbits/aiCharts/Base/View3D;->a(Landroid/graphics/Canvas;F)Landroid/graphics/Matrix;

    move-result-object v2

    goto/16 :goto_9

    :cond_18
    invoke-virtual {v14}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getPosition()Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    move-result-object v2

    iget-boolean v2, v2, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsZAxis:Z

    if-nez v2, :cond_10

    move-object v2, v4

    goto/16 :goto_9

    :cond_19
    sget-object v2, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Polar:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-object/from16 v0, v16

    if-ne v0, v2, :cond_1c

    const/4 v2, 0x0

    move v4, v2

    :goto_b
    move/from16 v0, v19

    if-ge v4, v0, :cond_1c

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getPosition()Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    move-result-object v5

    iget-boolean v5, v5, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsZAxis:Z

    if-nez v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->b:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    if-ne v2, v5, :cond_1b

    invoke-virtual {v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->drawPolar(Landroid/graphics/Canvas;)V

    :cond_1a
    :goto_c
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_b

    :cond_1b
    invoke-virtual {v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->drawCartesian(Landroid/graphics/Canvas;)V

    goto :goto_c

    :cond_1c
    const/4 v2, 0x0

    :goto_d
    move-object/from16 v0, v20

    array-length v3, v0

    if-ge v2, v3, :cond_1d

    aget-object v3, v20, v2

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->drawMarkers()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1d
    if-eqz v17, :cond_1e

    invoke-static {}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->b()V

    :cond_1e
    return-void

    :cond_1f
    move v4, v2

    goto/16 :goto_4
.end method

.method protected final ensureLayout()V
    .locals 7

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->ensureRefresh()V

    iput-boolean v1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->o:Z

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->r:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    move-object v6, v0

    :goto_0
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object v0

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Cartesian:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->j:Lcom/artfulbits/aiCharts/Base/l;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/l;->a()I

    move-result v5

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->a(IIIII)V

    :cond_1
    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->l:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, v6, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->l:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v6, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->l:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->l:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartArea;->a(IIII)V

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->d()V

    :cond_2
    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->r:I

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->r:I

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->o:Z

    return-void

    :cond_4
    move-object v6, v0

    goto :goto_0
.end method

.method protected final ensureRefresh()V
    .locals 2

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->r:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->refresh()V

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->r:I

    xor-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->r:I

    :cond_0
    return-void
.end method

.method public final getAxes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartAxis;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->e:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    return-object v0
.end method

.method public final getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected final getChart()Lcom/artfulbits/aiCharts/Base/ChartEngine;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->p:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    return-object v0
.end method

.method public final getCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-nez v0, :cond_0

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->None:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object v0

    goto :goto_0
.end method

.method public final getDefaultXAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->b:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    return-object v0
.end method

.method public final getDefaultYAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->c:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    return-object v0
.end method

.method public final getDefaultZAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    return-object v0
.end method

.method public final getGridBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getPadding(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->l:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public final getSeriesBounds()Landroid/graphics/Rect;
    .locals 1

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->ensureLayout()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->n:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getView3D()Lcom/artfulbits/aiCharts/Base/View3D;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    return-object v0
.end method

.method protected final hitTest(IILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->Regions:Lcom/artfulbits/aiCharts/Base/j;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2, p3}, Lcom/artfulbits/aiCharts/Base/j;->a(FFLjava/util/ArrayList;)V

    return-void
.end method

.method protected final inflateAttributes(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, -0x1

    const-string v0, "name"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->a:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "grid"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4, p3, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const-string v0, "background"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4, p3, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected final inflateBeginTag(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/f;
    .locals 1

    const-string v0, "area.xaxis"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->b:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "area.yaxis"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->c:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final invalidate(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->o:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->r:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->r:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->p:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->p:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->invalidate(I)V

    :cond_0
    return-void
.end method

.method protected final isAutoLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->k:Z

    return v0
.end method

.method public final isClustered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->q:Z

    return v0
.end method

.method public final layout(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->r:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->r:I

    return-void
.end method

.method public final measure(Landroid/graphics/Point;)V
    .locals 0

    return-void
.end method

.method public final refresh()V
    .locals 18

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_visibleSeries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->i:D

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->p:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->p:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getSeries()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->h:Lcom/artfulbits/aiCharts/Base/View3D;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/View3D;->getMode()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->size()I

    move-result v5

    move v3, v2

    move v2, v1

    :goto_1
    if-ge v3, v5, :cond_6

    invoke-virtual {v4, v3}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->a()Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v6

    move-object/from16 v0, p0

    if-ne v6, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-nez v6, :cond_3

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_visibleSeries:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v1

    sget v6, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_SUPPORT_3D:I

    invoke-virtual {v1, v6}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v1

    and-int/2addr v1, v2

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v6

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/artfulbits/aiCharts/Base/ChartType;->isCompatible(Lcom/artfulbits/aiCharts/Base/ChartType;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/artfulbits/aiCharts/Base/ChartType;->isCompatible(Lcom/artfulbits/aiCharts/Base/ChartType;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v6

    sget v7, Lcom/artfulbits/aiCharts/Base/ChartType;->FLAG_SUPPORT_3D:I

    invoke-virtual {v6, v7}, Lcom/artfulbits/aiCharts/Base/ChartType;->isFlags(I)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_visibleSeries:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->j:Lcom/artfulbits/aiCharts/Base/l;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_visibleSeries:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->q:Z

    invoke-virtual {v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/l;->a(Ljava/util/ArrayList;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_primarySeries:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartType;->getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object v1

    sget-object v2, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->None:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->e:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    const/4 v1, 0x0

    invoke-virtual {v10}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->size()I

    move-result v11

    move v7, v1

    :goto_3
    if-ge v7, v11, :cond_0

    invoke-virtual {v10, v7}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->isAuto()Z

    move-result v1

    if-eqz v1, :cond_d

    const-wide v3, -0x10000000000001L

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_visibleSeries:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-object v9, v8

    move v8, v1

    :goto_4
    if-ge v8, v13, :cond_b

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getActualXAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v14

    if-ne v14, v2, :cond_9

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getXRange()Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object v9

    :cond_7
    :goto_5
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-wide v14, v9, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    cmpg-double v1, v3, v14

    if-gez v1, :cond_8

    iget-wide v3, v9, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    :cond_8
    iget-wide v14, v9, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    cmpl-double v1, v5, v14

    if-lez v1, :cond_f

    iget-wide v5, v9, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    move-wide/from16 v16, v5

    move-wide v5, v3

    move-wide/from16 v3, v16

    :goto_6
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move-wide/from16 v16, v5

    move-wide v5, v3

    move-wide/from16 v3, v16

    goto :goto_4

    :cond_9
    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getActualYAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v14

    if-ne v14, v2, :cond_a

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getYRange()Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object v9

    goto :goto_5

    :cond_a
    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getActualZAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v14

    if-ne v14, v2, :cond_7

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getZRange()Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object v9

    goto :goto_5

    :cond_b
    cmpl-double v1, v5, v3

    if-lez v1, :cond_e

    const-wide/16 v5, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    :cond_c
    :goto_7
    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v1

    invoke-virtual {v1, v5, v6, v3, v4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->computeRange(DD)V

    :cond_d
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_3

    :cond_e
    cmpl-double v1, v5, v3

    if-nez v1, :cond_c

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v5, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v8

    goto :goto_7

    :cond_f
    move-wide/from16 v16, v5

    move-wide v5, v3

    move-wide/from16 v3, v16

    goto :goto_6
.end method

.method public final setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->f:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->f:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setBounds(Landroid/graphics/Rect;)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->k:Z

    :goto_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->p:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->p:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->invalidate(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartArea;->layout(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->k:Z

    goto :goto_0
.end method

.method protected final setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->p:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->p:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->p:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->s:Lcom/artfulbits/aiCharts/Base/p;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->removeNotificationListener(Lcom/artfulbits/aiCharts/Base/p;)V

    :cond_0
    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->p:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    const/4 v0, 0x3

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->r:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->p:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->p:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->s:Lcom/artfulbits/aiCharts/Base/p;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->addNotificationListener(Lcom/artfulbits/aiCharts/Base/p;)V

    :cond_1
    return-void
.end method

.method public final setClustered(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->q:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->q:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setDefaultXAxis(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->b:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->b:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setDefaultYAxis(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->c:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->c:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setDefaultZAxis(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setGridBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->g:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->g:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->p:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->p:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getAreas()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->validateName(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->a:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->invalidate(I)V

    return-void
.end method

.method public final setPadding(I)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->l:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->invalidate(I)V

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->l:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->invalidate(I)V

    return-void
.end method
