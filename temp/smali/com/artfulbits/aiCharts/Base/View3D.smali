.class public final Lcom/artfulbits/aiCharts/Base/View3D;
.super Ljava/lang/Object;


# static fields
.field public static final MODE_3D:I = 0x2

.field public static final MODE_3D_RAA:I = 0x1

.field public static final MODE_NONE:I

.field private static final a:[F


# instance fields
.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private final h:Lcom/artfulbits/aiCharts/Base/ChartArea;

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private final r:Landroid/graphics/Rect;

.field private final s:[F

.field private final t:[F

.field private final u:[F

.field private final v:Landroid/graphics/Matrix;

.field private final w:[F

.field private final x:[F

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/artfulbits/aiCharts/Base/View3D;->a:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartArea;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/artfulbits/aiCharts/Base/View3D;->b:I

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->c:F

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    iput v2, p0, Lcom/artfulbits/aiCharts/Base/View3D;->e:F

    iput v2, p0, Lcom/artfulbits/aiCharts/Base/View3D;->f:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->g:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->s:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->t:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->u:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    iput v3, p0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->h:Lcom/artfulbits/aiCharts/Base/ChartArea;

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->h:Lcom/artfulbits/aiCharts/Base/ChartArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartArea;->invalidate(I)V

    return-void
.end method


# virtual methods
.method final a(Landroid/graphics/Canvas;F)Landroid/graphics/Matrix;
    .locals 6

    sget-object v0, Lcom/artfulbits/aiCharts/Base/View3D;->a:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40800000    # -1.0f

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v5, 0x2

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v5, 0x4

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v5, 0x6

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFFFFFFF)Landroid/graphics/Matrix;
    .locals 6

    const/4 v0, 0x0

    cmpl-float v0, p6, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p8, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p10, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p11, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v1, 0x0

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v1, 0x1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v1, 0x2

    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v1, 0x3

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v1, 0x4

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v1, 0x5

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v1, 0x6

    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v1, 0x7

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    add-float v1, p3, p6

    const/4 v0, 0x0

    add-float v2, p4, v0

    const/4 v0, 0x0

    add-float v3, p8, v0

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v5, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    const/4 v0, 0x0

    add-float v1, p3, v0

    add-float v2, p4, p10

    const/4 v0, 0x0

    add-float v3, p11, v0

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    add-float v0, p3, p6

    const/4 v1, 0x0

    add-float/2addr v1, v0

    const/4 v0, 0x0

    add-float/2addr v0, p4

    add-float v2, v0, p10

    const/4 v0, 0x0

    add-float/2addr v0, p8

    add-float v3, v0, p11

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v5, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method final a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFFFFFFF)Landroid/graphics/Matrix;
    .locals 6

    const/4 v0, 0x0

    cmpl-float v0, p8, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p10, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v1, 0x0

    iget v2, p2, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v1, 0x1

    iget v2, p2, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v1, 0x2

    iget v2, p2, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v1, 0x3

    iget v2, p2, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v1, 0x4

    iget v2, p2, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v1, 0x5

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v1, 0x6

    iget v2, p2, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v1, 0x7

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    const/4 v0, 0x0

    add-float v1, p3, v0

    const/4 v0, 0x0

    add-float v2, p4, v0

    const/4 v0, 0x0

    add-float v3, p8, v0

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v5, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    const/4 v0, 0x0

    add-float v1, p3, v0

    add-float v2, p4, p10

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    const/4 v0, 0x0

    add-float/2addr v0, p3

    const/4 v1, 0x0

    add-float/2addr v1, v0

    const/4 v0, 0x0

    add-float/2addr v0, p4

    add-float v2, v0, p10

    const/4 v0, 0x0

    add-float/2addr v0, p8

    const/4 v3, 0x0

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v5, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFF[FI)Z

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->w:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/View3D;->x:[F

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->v:Landroid/graphics/Matrix;

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method final a(IIIII)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v4, -0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->e:F

    sub-int v5, p3, p1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->j:F

    sub-int v4, p3, p1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->j:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->k:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->j:F

    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->c:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v12, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v13, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v14, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v15, v4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/artfulbits/aiCharts/Base/View3D;->n:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/artfulbits/aiCharts/Base/View3D;->o:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->n:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->l:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->o:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->m:F

    sub-int v4, p3, p1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->p:F

    sub-int v4, p4, p2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->q:F

    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->p:F

    mul-float/2addr v5, v13

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/artfulbits/aiCharts/Base/View3D;->q:F

    mul-float/2addr v6, v15

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float v5, v12, v14

    move-object/from16 v0, p0

    iget v6, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->t:[F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->s:[F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->b:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/artfulbits/aiCharts/Base/View3D;->p:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/artfulbits/aiCharts/Base/View3D;->q:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->s:[F

    const/4 v5, 0x0

    neg-float v6, v7

    neg-float v8, v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    invoke-static/range {v4 .. v11}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->t:[F

    const/16 v5, 0x8

    neg-float v6, v13

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->t:[F

    const/16 v5, 0x9

    neg-float v6, v15

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v10, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->t:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/View3D;->s:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/artfulbits/aiCharts/Base/View3D;->t:[F

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->s:[F

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move v4, v10

    :goto_1
    move/from16 v0, p1

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/artfulbits/aiCharts/Base/View3D;->p:F

    add-float v8, v5, v6

    move/from16 v0, p2

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/artfulbits/aiCharts/Base/View3D;->q:F

    add-float/2addr v6, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v9, v5, v7

    sub-float v5, v9, v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/artfulbits/aiCharts/Base/View3D;->b:I

    const/4 v10, 0x1

    if-eq v7, v10, :cond_8

    mul-float v5, v13, v14

    mul-float/2addr v5, v4

    sub-float v7, v8, v5

    mul-float v5, v15, v4

    sub-float v5, v6, v5

    mul-float v10, v12, v14

    mul-float/2addr v4, v10

    sub-float v4, v9, v4

    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/artfulbits/aiCharts/Base/View3D;->s:[F

    sub-float/2addr v8, v7

    sub-float/2addr v6, v5

    sub-float/2addr v9, v4

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v8, v6, v9}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v16

    div-float v11, v11, v16

    mul-float/2addr v8, v11

    mul-float/2addr v6, v11

    mul-float/2addr v9, v11

    const/4 v11, 0x0

    mul-float/2addr v11, v6

    neg-float v0, v9

    move/from16 v16, v0

    sub-float v11, v11, v16

    const/16 v16, 0x0

    mul-float v16, v16, v9

    const/16 v17, 0x0

    mul-float v17, v17, v8

    sub-float v16, v16, v17

    neg-float v0, v8

    move/from16 v17, v0

    const/16 v18, 0x0

    mul-float v18, v18, v6

    sub-float v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v11, v0, v1}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v19

    div-float v18, v18, v19

    mul-float v11, v11, v18

    mul-float v16, v16, v18

    mul-float v17, v17, v18

    mul-float v18, v16, v9

    mul-float v19, v17, v6

    sub-float v18, v18, v19

    mul-float v19, v17, v8

    mul-float v20, v11, v9

    sub-float v19, v19, v20

    mul-float v20, v11, v6

    mul-float v21, v16, v8

    sub-float v20, v20, v21

    const/16 v21, 0x0

    aput v11, v10, v21

    const/4 v11, 0x1

    aput v18, v10, v11

    const/4 v11, 0x2

    neg-float v8, v8

    aput v8, v10, v11

    const/4 v8, 0x3

    const/4 v11, 0x0

    aput v11, v10, v8

    const/4 v8, 0x4

    aput v16, v10, v8

    const/4 v8, 0x5

    aput v19, v10, v8

    const/4 v8, 0x6

    neg-float v6, v6

    aput v6, v10, v8

    const/4 v6, 0x7

    const/4 v8, 0x0

    aput v8, v10, v6

    const/16 v6, 0x8

    aput v17, v10, v6

    const/16 v6, 0x9

    aput v20, v10, v6

    const/16 v6, 0xa

    neg-float v8, v9

    aput v8, v10, v6

    const/16 v6, 0xb

    const/4 v8, 0x0

    aput v8, v10, v6

    const/16 v6, 0xc

    const/4 v8, 0x0

    aput v8, v10, v6

    const/16 v6, 0xd

    const/4 v8, 0x0

    aput v8, v10, v6

    const/16 v6, 0xe

    const/4 v8, 0x0

    aput v8, v10, v6

    const/16 v6, 0xf

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v10, v6

    const/4 v6, 0x0

    neg-float v7, v7

    neg-float v5, v5

    neg-float v4, v4

    invoke-static {v10, v6, v7, v5, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->u:[F

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->u:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/View3D;->t:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/artfulbits/aiCharts/Base/View3D;->s:[F

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->b:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->l:F

    const/4 v6, 0x0

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    const/4 v4, 0x2

    :goto_3
    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->m:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    const/16 v4, 0x8

    :goto_4
    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    :goto_5
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->e:F

    sub-int v5, p3, p1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->j:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->j:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->f:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->k:F

    move/from16 v0, p5

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->j:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    goto/16 :goto_0

    :cond_1
    const/high16 v5, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/artfulbits/aiCharts/Base/View3D;->p:F

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/artfulbits/aiCharts/Base/View3D;->g:F

    div-float v10, v5, v6

    add-float v11, v10, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->t:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/artfulbits/aiCharts/Base/View3D;->p:F

    neg-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/artfulbits/aiCharts/Base/View3D;->p:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/artfulbits/aiCharts/Base/View3D;->q:F

    neg-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/artfulbits/aiCharts/Base/View3D;->q:F

    invoke-static/range {v4 .. v11}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    add-float v4, v10, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    goto/16 :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x4

    goto :goto_4

    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    mul-float v4, v13, v14

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_5

    const/4 v4, 0x2

    :goto_6
    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    const/4 v4, 0x0

    cmpl-float v4, v15, v4

    if-lez v4, :cond_6

    const/16 v4, 0x8

    :goto_7
    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    mul-float v4, v12, v14

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_7

    const/16 v4, 0x10

    :goto_8
    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    goto/16 :goto_5

    :cond_5
    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x4

    goto :goto_7

    :cond_7
    const/16 v4, 0x20

    goto :goto_8

    :cond_8
    move v4, v5

    move v7, v8

    move v5, v6

    goto/16 :goto_2
.end method

.method final a(I)Z
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->y:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a()[F
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->s:[F

    return-object v0
.end method

.method final b(I)F
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->j:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->k:F

    add-float/2addr v0, v1

    return v0
.end method

.method final b()[F
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->t:[F

    return-object v0
.end method

.method final c()F
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->i:F

    return v0
.end method

.method final d()F
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->l:F

    return v0
.end method

.method final e()F
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->m:F

    return v0
.end method

.method final f()F
    .locals 3

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->j:F

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/View3D;->k:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getDepth()F
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->e:F

    return v0
.end method

.method public final getMode()I
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->b:I

    return v0
.end method

.method public final getPerspective()F
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->g:F

    return v0
.end method

.method public final getRotationX()F
    .locals 2

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->c:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final getRotationY()F
    .locals 2

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final project(FFFLandroid/graphics/PointF;)Z
    .locals 8

    const/4 v7, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->u:[F

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v2, p1

    const/4 v3, 0x4

    aget v3, v0, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    const/16 v3, 0x8

    aget v3, v0, v3

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    const/16 v3, 0xc

    aget v3, v0, v3

    add-float/2addr v2, v3

    aget v3, v0, v7

    mul-float/2addr v3, p1

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    const/16 v4, 0x9

    aget v4, v0, v4

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    const/16 v4, 0xd

    aget v4, v0, v4

    add-float/2addr v3, v4

    const/4 v4, 0x3

    aget v4, v0, v4

    mul-float/2addr v4, p1

    const/4 v5, 0x7

    aget v5, v0, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    const/16 v5, 0xb

    aget v5, v0, v5

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    const/16 v5, 0xf

    aget v0, v0, v5

    add-float/2addr v0, v4

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-nez v4, :cond_0

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    mul-float/2addr v2, v5

    mul-float/2addr v2, v6

    add-float/2addr v2, v4

    iput v2, p4, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    mul-float/2addr v0, v4

    mul-float/2addr v0, v6

    sub-float v0, v2, v0

    iput v0, p4, Landroid/graphics/PointF;->y:F

    return v7

    :cond_0
    div-float v0, v1, v0

    goto :goto_0
.end method

.method public final project(FFF[FI)Z
    .locals 8

    const/4 v7, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->u:[F

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v2, p1

    const/4 v3, 0x4

    aget v3, v0, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    const/16 v3, 0x8

    aget v3, v0, v3

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    const/16 v3, 0xc

    aget v3, v0, v3

    add-float/2addr v2, v3

    aget v3, v0, v7

    mul-float/2addr v3, p1

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    const/16 v4, 0x9

    aget v4, v0, v4

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    const/16 v4, 0xd

    aget v4, v0, v4

    add-float/2addr v3, v4

    const/4 v4, 0x3

    aget v4, v0, v4

    mul-float/2addr v4, p1

    const/4 v5, 0x7

    aget v5, v0, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    const/16 v5, 0xb

    aget v5, v0, v5

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    const/16 v5, 0xf

    aget v0, v0, v5

    add-float/2addr v0, v4

    cmpl-float v4, v0, v1

    if-nez v4, :cond_0

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    mul-float/2addr v2, v5

    mul-float/2addr v2, v6

    add-float/2addr v2, v4

    aput v2, p4, p5

    add-int/lit8 v2, p5, 0x1

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Base/View3D;->r:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    mul-float/2addr v0, v5

    mul-float/2addr v0, v6

    sub-float v0, v4, v0

    aput v0, p4, v2

    return v7

    :cond_0
    div-float v0, v1, v0

    goto :goto_0
.end method

.method public final rotate(FF)V
    .locals 6

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->c:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->c:F

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    float-to-double v0, v0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    invoke-static/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/MathUtils;->clamp(DDD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/View3D;->g()V

    :cond_1
    return-void
.end method

.method public final setDepth(F)V
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->e:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->e:F

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/View3D;->g()V

    :cond_0
    return-void
.end method

.method public final setMode(I)V
    .locals 2

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->b:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/View3D;->b:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->h:Lcom/artfulbits/aiCharts/Base/ChartArea;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartArea;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setPerspective(F)V
    .locals 6

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->g:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    float-to-double v0, p1

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/MathUtils;->clamp(DDD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->g:F

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/View3D;->g()V

    :cond_0
    return-void
.end method

.method public final setRotationX(F)V
    .locals 2

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->c:F

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/View3D;->g()V

    :cond_0
    return-void
.end method

.method public final setRotationY(F)V
    .locals 6

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    float-to-double v0, v0

    const-wide v2, -0x4006de04abbbd2e8L    # -1.5707963267948966

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/MathUtils;->clamp(DDD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/View3D;->d:F

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/View3D;->g()V

    :cond_0
    return-void
.end method
