.class public final Lcom/artfulbits/aiCharts/Base/ChartGraph;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/ChartGraph$b;,
        Lcom/artfulbits/aiCharts/Base/ChartGraph$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Canvas;

.field private b:Landroid/graphics/Rect;

.field private c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

.field private final d:Landroid/graphics/Paint;

.field private e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

.field private f:Z

.field private g:Lcom/artfulbits/aiCharts/Base/j;

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartGraph$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->f:Z

    new-instance v0, Lcom/artfulbits/aiCharts/Base/j;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/j;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->g:Lcom/artfulbits/aiCharts/Base/j;

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->h:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->f:Z

    new-instance v0, Lcom/artfulbits/aiCharts/Base/j;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/j;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->g:Lcom/artfulbits/aiCharts/Base/j;

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->h:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    return-void
.end method

.method static a(Ljava/lang/String;Landroid/graphics/Paint;FLandroid/graphics/PointF;)F
    .locals 6

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_0

    const v2, 0x3c8efa35

    mul-float/2addr v2, p2

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v3

    invoke-static {v2}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    mul-float v4, v3, v0

    mul-float v5, v2, v1

    add-float/2addr v4, v5

    iput v4, p3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p3, Landroid/graphics/PointF;->y:F

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0
.end method

.method private a(FFFFFFI)V
    .locals 13

    sub-float v0, p4, p2

    sub-float v1, p1, p3

    mul-float v2, v0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v4, v0, v2

    div-float v5, v1, v2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v1, p1

    move v2, p2

    move/from16 v3, p5

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v10

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v1, p1

    move v2, p2

    move/from16 v3, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v11

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v12

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    invoke-virtual {v1, v10, v11, v12, v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(IIII)V

    return-void
.end method

.method private static a([F[F)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x3

    aget v0, p0, v0

    aget v1, p0, v8

    sub-float/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    aget v2, p0, v9

    sub-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    aget v3, p0, v10

    sub-float/2addr v2, v3

    const/4 v3, 0x6

    aget v3, p0, v3

    aget v4, p0, v8

    sub-float/2addr v3, v4

    const/4 v4, 0x7

    aget v4, p0, v4

    aget v5, p0, v9

    sub-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    aget v6, p0, v10

    sub-float/2addr v5, v6

    mul-float v6, v1, v5

    mul-float v7, v2, v4

    sub-float/2addr v6, v7

    mul-float/2addr v2, v3

    mul-float/2addr v5, v0

    sub-float/2addr v2, v5

    mul-float/2addr v0, v4

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    mul-float v1, v6, v6

    mul-float v3, v2, v2

    add-float/2addr v1, v3

    mul-float v3, v0, v0

    add-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    div-float v3, v6, v1

    aput v3, p1, v8

    div-float/2addr v2, v1

    aput v2, p1, v9

    div-float/2addr v0, v1

    aput v0, p1, v10

    return-void
.end method

.method static b()V
    .locals 0

    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v1, v1, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->a()V

    iput-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    :cond_1
    iput-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    return-void
.end method

.method final a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    iput-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->b:Landroid/graphics/Rect;

    return-void
.end method

.method final a(Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/View3D;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->b:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c()V

    :cond_2
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    invoke-virtual {v0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->a(Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/View3D;)V

    return-void
.end method

.method final a(Lcom/artfulbits/aiCharts/Base/j;)V
    .locals 2

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->g:Lcom/artfulbits/aiCharts/Base/j;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->g:Lcom/artfulbits/aiCharts/Base/j;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v1, v1, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->b:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/artfulbits/aiCharts/Base/j;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method final a(Ljava/lang/String;Landroid/graphics/Rect;FFLandroid/graphics/Paint;)V
    .locals 6

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, -0x41000000    # -0.5f

    mul-float/2addr v3, p4

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v5, p3, v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p3}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {v0, p1, v3, v4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void

    :cond_0
    add-float/2addr v1, v3

    add-float/2addr v2, v4

    invoke-virtual {v0, p1, v1, v2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method final a(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-boolean p2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->f:Z

    return-void
.end method

.method public final drawArea3D([FFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 32

    invoke-virtual/range {p4 .. p4}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackColor()I

    move-result v9

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a()V

    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v2, 0x1

    aget v4, p1, v2

    const/4 v2, 0x2

    aget v5, p1, v2

    const/4 v2, 0x3

    aget v6, p1, v2

    move-object/from16 v2, p0

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a(FFFFFFI)V

    add-int/lit8 v2, v31, -0x2

    aget v3, p1, v2

    add-int/lit8 v2, v31, -0x1

    aget v4, p1, v2

    add-int/lit8 v2, v31, -0x4

    aget v5, p1, v2

    add-int/lit8 v2, v31, -0x3

    aget v6, p1, v2

    move-object/from16 v2, p0

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a(FFFFFFI)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move/from16 v23, v2

    move/from16 v27, v7

    move/from16 v29, v8

    move v7, v6

    move v2, v3

    move v6, v5

    move v3, v11

    move v5, v4

    move v4, v12

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_1

    aget v11, p1, v23

    add-int/lit8 v8, v23, 0x1

    aget v12, p1, v8

    add-int/lit8 v8, v23, 0x2

    aget v30, p1, v8

    add-int/lit8 v8, v23, 0x3

    aget v28, p1, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v13, p2

    move/from16 v19, v9

    invoke-virtual/range {v10 .. v19}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v13, p3

    move/from16 v19, v9

    invoke-virtual/range {v10 .. v19}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v14, v30

    move/from16 v15, v28

    move/from16 v16, p2

    move/from16 v22, v9

    invoke-virtual/range {v13 .. v22}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v14, v30

    move/from16 v15, v28

    move/from16 v16, p3

    move/from16 v22, v9

    invoke-virtual/range {v13 .. v22}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v10

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    move/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v8, v7, v0, v1, v5}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(IIII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    move/from16 v0, v25

    invoke-virtual {v5, v6, v0, v10, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(IIII)V

    move-object/from16 v2, p0

    move v5, v11

    move v6, v12

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a(FFFFFFI)V

    move-object/from16 v2, p0

    move/from16 v3, v30

    move/from16 v4, v28

    move/from16 v5, v29

    move/from16 v6, v27

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a(FFFFFFI)V

    :cond_0
    add-int/lit8 v2, v23, 0x4

    move/from16 v23, v2

    move/from16 v5, v24

    move/from16 v6, v25

    move/from16 v7, v26

    move/from16 v27, v28

    move/from16 v29, v30

    move v4, v12

    move v3, v11

    move v2, v10

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v3, v3, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->f:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->g:Lcom/artfulbits/aiCharts/Base/j;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/artfulbits/aiCharts/Base/j;->a(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->a(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v3, v3, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->b()V

    :cond_2
    return-void
.end method

.method public final drawBox3D(FFFFFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 11

    invoke-virtual/range {p7 .. p7}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackColor()I

    move-result v10

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a()V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move v2, p1

    move/from16 v3, p5

    move v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v2, p4

    move/from16 v3, p5

    move v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move v2, p4

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v2, p1

    move v3, p2

    move/from16 v4, p6

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move v2, p1

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move v2, p4

    move v3, p2

    move/from16 v4, p6

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move v2, p1

    move v3, p2

    move/from16 v4, p6

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v2, p4

    move v3, p2

    move/from16 v4, p6

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move v2, p4

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v2, p1

    move/from16 v3, p5

    move v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move v2, p1

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move v2, p4

    move/from16 v3, p5

    move v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move v2, p1

    move/from16 v3, p5

    move v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v2, p1

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move v2, p1

    move v3, p2

    move/from16 v4, p6

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v2, p4

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move v2, p4

    move/from16 v3, p5

    move v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move v2, p4

    move v3, p2

    move/from16 v4, p6

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a:[S

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a([S)V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v2, v2, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-boolean v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->g:Lcom/artfulbits/aiCharts/Base/j;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/artfulbits/aiCharts/Base/j;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->a(I)V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v2, v2, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->b()V

    :cond_0
    return-void
.end method

.method public final drawCylinder3D(FFFFFFFFZLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a()V

    invoke-virtual/range {p10 .. p10}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackColor()I

    move-result v10

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p4, v1

    div-float v26, p5, p6

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v27, v2, v26

    div-float v28, p7, p8

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v29, v2, v28

    if-eqz p9, :cond_1

    sub-float v2, p1, v1

    add-float v12, p1, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/high16 v15, -0x40800000    # -1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v20, v10

    invoke-virtual/range {v11 .. v20}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v3

    move/from16 v23, v1

    move/from16 v24, v3

    :goto_0
    const/4 v1, 0x0

    move/from16 v25, v1

    :goto_1
    const/16 v1, 0xc

    move/from16 v0, v25

    if-gt v0, v1, :cond_3

    move/from16 v0, v25

    int-to-double v3, v0

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4028000000000000L    # 12.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v0, v5

    move/from16 v30, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v0, v3

    move/from16 v31, v0

    if-eqz p9, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    mul-float v3, v30, p5

    add-float v3, v3, p2

    mul-float v4, p6, v31

    add-float v4, v4, p3

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    mul-float v1, v30, p7

    add-float v13, p2, v1

    mul-float v1, p8, v31

    add-float v14, p3, v1

    const/high16 v15, -0x40800000    # -1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v10

    invoke-virtual/range {v11 .. v20}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    mul-float v3, v30, p5

    add-float v3, v3, p2

    mul-float v4, p6, v31

    add-float v4, v4, p3

    const/4 v5, 0x0

    mul-float v6, v26, v30

    mul-float v7, v27, v31

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    mul-float v1, v30, p7

    add-float v13, p2, v1

    mul-float v1, p8, v31

    add-float v14, p3, v1

    const/4 v15, 0x0

    mul-float v16, v28, v30

    mul-float v17, v29, v31

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v10

    invoke-virtual/range {v11 .. v20}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v1

    move v4, v1

    move v5, v3

    move/from16 v1, v21

    move/from16 v3, v22

    :goto_2
    const/16 v6, 0xc

    move/from16 v0, v25

    if-eq v0, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    add-int/lit8 v7, v3, 0x4

    move/from16 v0, v23

    invoke-virtual {v6, v0, v3, v7}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(III)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    add-int/lit8 v6, v1, 0x4

    move/from16 v0, v24

    invoke-virtual {v3, v0, v1, v6}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(III)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    add-int/lit8 v3, v4, 0x4

    add-int/lit8 v6, v5, 0x4

    invoke-virtual {v1, v5, v4, v3, v6}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(IIII)V

    :cond_0
    add-int/lit8 v1, v25, 0x1

    move/from16 v25, v1

    goto/16 :goto_1

    :cond_1
    add-float v3, p2, v1

    sub-float v13, p2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v2, p1

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v15, 0x0

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v12, p1

    move/from16 v14, p3

    move/from16 v20, v10

    invoke-virtual/range {v11 .. v20}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v2

    move v12, v13

    move/from16 v23, v1

    move/from16 v24, v2

    move v2, v3

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    mul-float v1, v30, p5

    add-float v14, p1, v1

    mul-float v1, p6, v31

    add-float v16, p3, v1

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v15, v2

    move/from16 v22, v10

    invoke-virtual/range {v13 .. v22}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    mul-float v1, v30, p7

    add-float v14, p1, v1

    mul-float v1, p8, v31

    add-float v16, p3, v1

    const/16 v17, 0x0

    const/high16 v18, -0x40800000    # -1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v15, v12

    move/from16 v22, v10

    invoke-virtual/range {v13 .. v22}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    mul-float v4, v30, p5

    add-float v14, p1, v4

    mul-float v4, p6, v31

    add-float v16, p3, v4

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v15, v2

    move/from16 v17, v30

    move/from16 v19, v31

    move/from16 v22, v10

    invoke-virtual/range {v13 .. v22}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    mul-float v4, v30, p7

    add-float v14, p1, v4

    mul-float v4, p8, v31

    add-float v16, p3, v4

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v15, v12

    move/from16 v17, v30

    move/from16 v19, v31

    move/from16 v22, v10

    invoke-virtual/range {v13 .. v22}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v4

    goto/16 :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v2, v2, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->f:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->g:Lcom/artfulbits/aiCharts/Base/j;

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Lcom/artfulbits/aiCharts/Base/j;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->a(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v2, v2, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->b()V

    :cond_4
    return-void
.end method

.method public final drawLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 6

    invoke-virtual {p3}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackColor()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getLineWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final drawLine3D(FFFFFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 8

    invoke-virtual {p7}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackColor()I

    move-result v7

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a(FFFFFFI)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v1, v1, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public final drawLines3D([FFFI)V
    .locals 9

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a()V

    const/4 v0, 0x2

    move v8, v0

    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_0

    add-int/lit8 v0, v8, -0x2

    aget v1, p1, v0

    add-int/lit8 v0, v8, -0x1

    aget v2, p1, v0

    aget v3, p1, v8

    add-int/lit8 v0, v8, 0x1

    aget v4, p1, v0

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a(FFFFFFI)V

    add-int/lit8 v0, v8, 0x2

    move v8, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v1, v1, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public final drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackColor()I

    move-result v0

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBorderColor()I

    move-result v1

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->save(I)I

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    invoke-virtual {v3, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {v2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->isBackFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getLineWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public final drawPie3D(FFFFFFFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a()V

    invoke-virtual/range {p9 .. p9}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackColor()I

    move-result v13

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p4, v4

    add-float v6, p2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p4, v4

    sub-float v16, p2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v5, p1

    move/from16 v7, p3

    invoke-virtual/range {v4 .. v13}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v15, p1

    move/from16 v17, p3

    move/from16 v23, v13

    invoke-virtual/range {v14 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v26

    const/4 v4, 0x0

    move/from16 v24, v4

    :goto_0
    const/16 v4, 0xc

    move/from16 v0, v24

    if-gt v0, v4, :cond_2

    move/from16 v0, v24

    int-to-float v4, v0

    mul-float v4, v4, p8

    const/high16 v5, 0x41400000    # 12.0f

    div-float/2addr v4, v5

    add-float v4, v4, p7

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v8, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v10, v4

    mul-float v4, v8, p5

    add-float v5, p1, v4

    mul-float v4, v10, p6

    add-float v7, p3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v13}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move v15, v5

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v20, v10

    move/from16 v23, v13

    invoke-virtual/range {v14 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v13}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move v15, v5

    move/from16 v17, v7

    move/from16 v23, v13

    invoke-virtual/range {v14 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-result v5

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v28

    move/from16 v3, v27

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(IIII)V

    :cond_0
    const/16 v7, 0xc

    move/from16 v0, v24

    if-eq v0, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    add-int/lit8 v8, v4, 0x4

    move/from16 v0, v25

    invoke-virtual {v7, v0, v4, v8}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(III)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    add-int/lit8 v7, v5, 0x4

    move/from16 v0, v26

    invoke-virtual {v4, v0, v5, v7}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(III)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    add-int/lit8 v5, v28, 0x4

    add-int/lit8 v7, v27, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v4, v0, v1, v5, v7}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(IIII)V

    :goto_1
    add-int/lit8 v4, v24, 0x1

    move/from16 v24, v4

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    move/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(IIII)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v5, v5, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->f:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->g:Lcom/artfulbits/aiCharts/Base/j;

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Lcom/artfulbits/aiCharts/Base/j;->a(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->a(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v5, v5, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->b()V

    :cond_3
    return-void
.end method

.method public final drawPoly3D([FII)V
    .locals 15

    add-int/lit8 v1, p2, -0x2

    mul-int/lit8 v1, v1, 0x3

    new-array v13, v1, [S

    const/4 v1, 0x3

    new-array v14, v1, [F

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a()V

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a([F[F)V

    const/4 v1, 0x0

    move v11, v1

    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    add-int/lit8 v3, v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v4, v3, 0x1

    aget v3, p1, v3

    add-int/lit8 v12, v4, 0x1

    aget v4, p1, v4

    const/4 v5, 0x0

    aget v5, v14, v5

    const/4 v6, 0x1

    aget v6, v14, v6

    const/4 v7, 0x2

    aget v7, v14, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v10, p3

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    move v2, v12

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    add-int/lit8 v3, p2, -0x2

    :goto_1
    if-ge v1, v3, :cond_1

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    aput-short v5, v13, v2

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    aput-short v2, v13, v4

    add-int/lit8 v2, v5, 0x1

    add-int/lit8 v4, v1, 0x2

    int-to-short v4, v4

    aput-short v4, v13, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    invoke-virtual {v1, v13}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a([S)V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v2, v2, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public final drawPyramid3D(FFFFFFFFZLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a()V

    invoke-virtual/range {p10 .. p10}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackColor()I

    move-result v10

    sub-float v4, p3, p6

    sub-float v28, p3, p8

    add-float v29, p3, p8

    add-float v30, p3, p6

    if-eqz p9, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p4, v1

    sub-float v12, p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p4, v1

    add-float v2, p1, v1

    sub-float v3, p2, p5

    add-float v13, p2, p5

    add-float v1, p2, p7

    sub-float v5, p2, p7

    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v26, v5

    move/from16 v27, v2

    move v2, v12

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move v14, v4

    move/from16 v20, v10

    invoke-virtual/range {v11 .. v20}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, -0x40800000    # -1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v15, v25

    move/from16 v16, v24

    move/from16 v17, v28

    move/from16 v23, v10

    invoke-virtual/range {v14 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, -0x40800000    # -1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move/from16 v15, v27

    move/from16 v16, v26

    move/from16 v17, v28

    move/from16 v23, v10

    invoke-virtual/range {v14 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v15, v27

    move/from16 v16, v26

    move/from16 v17, v29

    move/from16 v23, v10

    invoke-virtual/range {v14 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v15, v25

    move/from16 v16, v24

    move/from16 v17, v29

    move/from16 v23, v10

    invoke-virtual/range {v14 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v14, v30

    move/from16 v20, v10

    invoke-virtual/range {v11 .. v20}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v30

    move/from16 v23, v10

    invoke-virtual/range {v14 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v15, 0x0

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move v14, v4

    move/from16 v20, v10

    invoke-virtual/range {v11 .. v20}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/4 v15, 0x0

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v14, v30

    move/from16 v20, v10

    invoke-virtual/range {v11 .. v20}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/16 v18, 0x0

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v30

    move/from16 v23, v10

    invoke-virtual/range {v14 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v15, v25

    move/from16 v16, v24

    move/from16 v17, v28

    move/from16 v23, v10

    invoke-virtual/range {v14 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v15, v27

    move/from16 v16, v26

    move/from16 v17, v28

    move/from16 v23, v10

    invoke-virtual/range {v14 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v15, v27

    move/from16 v16, v26

    move/from16 v17, v29

    move/from16 v23, v10

    invoke-virtual/range {v14 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move/from16 v15, v25

    move/from16 v16, v24

    move/from16 v17, v29

    move/from16 v23, v10

    invoke-virtual/range {v14 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/high16 v18, -0x40800000    # -1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v15, v27

    move/from16 v16, v26

    move/from16 v17, v28

    move/from16 v23, v10

    invoke-virtual/range {v14 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/high16 v18, -0x40800000    # -1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v15, v27

    move/from16 v16, v26

    move/from16 v17, v29

    move/from16 v23, v10

    invoke-virtual/range {v14 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/high16 v18, -0x40800000    # -1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v30

    move/from16 v23, v10

    invoke-virtual/range {v14 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move v14, v4

    move/from16 v20, v10

    invoke-virtual/range {v11 .. v20}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move/from16 v2, v25

    move/from16 v3, v24

    move/from16 v4, v28

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move/from16 v2, v25

    move/from16 v3, v24

    move/from16 v4, v29

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    move/from16 v14, v30

    move/from16 v20, v10

    invoke-virtual/range {v11 .. v20}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a:[S

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a([S)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v2, v2, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->f:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->g:Lcom/artfulbits/aiCharts/Base/j;

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Lcom/artfulbits/aiCharts/Base/j;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->a(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v2, v2, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->b()V

    :cond_0
    return-void

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p4, v1

    add-float v13, p2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p4, v1

    sub-float v1, p2, v1

    sub-float v3, p1, p5

    add-float v12, p1, p5

    add-float v2, p1, p7

    sub-float v5, p1, p7

    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v26, v1

    move/from16 v27, v5

    move v2, v3

    move v3, v13

    goto/16 :goto_0
.end method

.method public final drawRect(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 1

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackColor()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawRect(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;I)V

    return-void
.end method

.method public final drawRect(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;I)V
    .locals 6

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBorderColor()I

    move-result v0

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Landroid/util/FloatMath;->floor(F)F

    move-result v2

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Landroid/util/FloatMath;->floor(F)F

    move-result v3

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->isBackFilterEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getLineWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public final drawSphere3D(FFFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a()V

    invoke-virtual/range {p5 .. p5}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackColor()I

    move-result v10

    const/4 v1, 0x0

    move v12, v1

    :goto_0
    const/4 v1, 0x6

    if-gt v12, v1, :cond_1

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    int-to-float v3, v12

    const v4, 0x3f060a92

    mul-float/2addr v3, v4

    float-to-double v3, v3

    sub-double/2addr v1, v3

    double-to-float v1, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v13, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v14, v1

    mul-float v1, p4, v13

    add-float v3, p2, v1

    move/from16 v0, p4

    neg-float v1, v0

    mul-float v15, v1, v14

    const/4 v1, 0x0

    move v11, v1

    :goto_1
    const/4 v1, 0x6

    if-gt v11, v1, :cond_0

    int-to-float v1, v11

    const v2, 0x3f860a92

    mul-float/2addr v1, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v5, v4

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v7, v1

    mul-float v1, v15, v5

    add-float v2, p1, v1

    mul-float v1, v15, v7

    add-float v4, p3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    neg-float v5, v5

    mul-float/2addr v5, v14

    neg-float v6, v13

    neg-float v7, v7

    mul-float/2addr v7, v14

    int-to-float v8, v11

    const/high16 v9, 0x40c00000    # 6.0f

    div-float/2addr v8, v9

    int-to-float v9, v12

    const/high16 v16, 0x40c00000    # 6.0f

    div-float v9, v9, v16

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    const/4 v1, 0x6

    if-ge v2, v1, :cond_3

    const/4 v1, 0x0

    :goto_3
    const/4 v3, 0x6

    if-ge v1, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    mul-int/lit8 v4, v2, 0x7

    add-int/2addr v4, v1

    add-int/lit8 v5, v2, 0x1

    mul-int/lit8 v5, v5, 0x7

    add-int/2addr v5, v1

    mul-int/lit8 v6, v2, 0x7

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(III)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    mul-int/lit8 v4, v2, 0x7

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v2, 0x1

    mul-int/lit8 v5, v5, 0x7

    add-int/2addr v5, v1

    add-int/lit8 v6, v2, 0x1

    mul-int/lit8 v6, v6, 0x7

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v2, v2, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public final drawSpline3D([FFFFI)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a()V

    move-object/from16 v0, p1

    array-length v1, v0

    div-int/lit8 v2, v1, 0x2

    const/4 v1, 0x1

    add-int/lit8 v13, v2, -0x1

    move v12, v1

    :goto_0
    if-gt v12, v13, :cond_3

    add-int/lit8 v1, v12, -0x1

    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v2, v12, 0x2

    const/4 v1, 0x1

    if-ne v12, v1, :cond_0

    move v3, v4

    :goto_1
    if-ne v12, v13, :cond_1

    move v1, v2

    :goto_2
    aget v11, p1, v4

    add-int/lit8 v5, v4, 0x1

    aget v10, p1, v5

    aget v5, p1, v2

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    const v7, 0x3e2aaaab

    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v8, v11

    const/high16 v9, 0x3f800000    # 1.0f

    aget v14, p1, v2

    aget v15, p1, v3

    sub-float/2addr v14, v15

    mul-float/2addr v9, v14

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    const v8, 0x3e2aaaab

    const/high16 v9, 0x40c00000    # 6.0f

    mul-float/2addr v9, v10

    const/high16 v14, 0x3f800000    # 1.0f

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v14

    add-float/2addr v2, v9

    mul-float/2addr v2, v8

    const v3, 0x3e2aaaab

    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v8, v5

    const/high16 v9, 0x3f800000    # 1.0f

    aget v14, p1, v1

    aget v15, p1, v4

    sub-float/2addr v14, v15

    mul-float/2addr v9, v14

    sub-float/2addr v8, v9

    mul-float/2addr v3, v8

    const v8, 0x3e2aaaab

    const/high16 v9, 0x40c00000    # 6.0f

    mul-float/2addr v9, v6

    const/high16 v14, 0x3f800000    # 1.0f

    add-int/lit8 v1, v1, 0x1

    aget v1, p1, v1

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    sub-float/2addr v1, v4

    mul-float/2addr v1, v14

    sub-float v1, v9, v1

    mul-float/2addr v1, v8

    const/high16 v4, 0x40400000    # 3.0f

    sub-float v8, v7, v11

    mul-float v14, v4, v8

    const/high16 v4, 0x40400000    # 3.0f

    sub-float v8, v2, v10

    mul-float v15, v4, v8

    const/high16 v4, 0x40400000    # 3.0f

    sub-float/2addr v3, v7

    mul-float/2addr v3, v4

    sub-float v16, v3, v14

    const/high16 v3, 0x40400000    # 3.0f

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    sub-float v17, v1, v15

    sub-float v1, v5, v11

    sub-float v1, v1, v16

    sub-float v18, v1, v14

    sub-float v1, v6, v10

    sub-float v1, v1, v17

    sub-float v19, v1, v15

    const v1, 0x3daaaaab

    move v9, v1

    move v3, v10

    move v2, v11

    :goto_3
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v9, v1

    if-gez v1, :cond_2

    mul-float v1, v18, v9

    mul-float/2addr v1, v9

    mul-float/2addr v1, v9

    mul-float v4, v16, v9

    mul-float/2addr v4, v9

    add-float/2addr v1, v4

    mul-float v4, v14, v9

    add-float/2addr v1, v4

    add-float v4, v1, v11

    mul-float v1, v19, v9

    mul-float/2addr v1, v9

    mul-float/2addr v1, v9

    mul-float v5, v17, v9

    mul-float/2addr v5, v9

    add-float/2addr v1, v5

    mul-float v5, v15, v9

    add-float/2addr v1, v5

    add-float v5, v1, v10

    move-object/from16 v1, p0

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a(FFFFFFI)V

    const v1, 0x3daaaaab

    add-float/2addr v1, v9

    move v9, v1

    move v3, v5

    move v2, v4

    goto :goto_3

    :cond_0
    add-int/lit8 v1, v12, -0x2

    mul-int/lit8 v1, v1, 0x2

    move v3, v1

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v1, v12, 0x1

    mul-int/lit8 v1, v1, 0x2

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v2, v2, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public final drawWireframe3D([FII)V
    .locals 15

    mul-int/lit8 v1, p2, 0x2

    new-array v13, v1, [S

    const/4 v1, 0x3

    new-array v14, v1, [F

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a()V

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a([F[F)V

    const/4 v1, 0x0

    move v11, v1

    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    add-int/lit8 v3, v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v4, v3, 0x1

    aget v3, p1, v3

    add-int/lit8 v12, v4, 0x1

    aget v4, p1, v4

    const/4 v5, 0x0

    aget v5, v14, v5

    const/4 v6, 0x1

    aget v6, v14, v6

    const/4 v7, 0x2

    aget v7, v14, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v10, p3

    invoke-virtual/range {v1 .. v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(FFFFFFFFI)I

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    move v2, v12

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    move v3, v2

    move v2, v1

    :goto_1
    move/from16 v0, p2

    if-ge v2, v0, :cond_2

    add-int/lit8 v4, v3, 0x1

    if-nez v2, :cond_1

    add-int/lit8 v1, p2, -0x1

    :goto_2
    int-to-short v1, v1

    aput-short v1, v13, v3

    add-int/lit8 v3, v4, 0x1

    int-to-short v1, v2

    aput-short v1, v13, v4

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v2, -0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    invoke-virtual {v1, v13}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a([S)V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->c:Lcom/artfulbits/aiCharts/Base/ChartGraph$b;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v2, v2, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public final fillPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackColor()I

    move-result v0

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->save(I)I

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->isBackFilterEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public final getCanvas()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->e:Lcom/artfulbits/aiCharts/Base/ChartGraph$a;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->d:Landroid/graphics/Canvas;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    goto :goto_0
.end method

.method public final strokePath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 1

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackColor()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->strokePath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;I)V

    return-void
.end method

.method public final strokePath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;I)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getLineWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final strokeRect(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 2

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBorderColor()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getLineWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
