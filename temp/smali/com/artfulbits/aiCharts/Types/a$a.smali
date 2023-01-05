.class final Lcom/artfulbits/aiCharts/Types/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Types/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:[F

.field private b:I

.field private c:[F

.field private synthetic d:Lcom/artfulbits/aiCharts/Types/a;


# direct methods
.method public constructor <init>(Lcom/artfulbits/aiCharts/Types/a;)V
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Lcom/artfulbits/aiCharts/Types/a$a;-><init>(Lcom/artfulbits/aiCharts/Types/a;I)V

    return-void
.end method

.method private constructor <init>(Lcom/artfulbits/aiCharts/Types/a;I)V
    .locals 1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Types/a$a;->d:Lcom/artfulbits/aiCharts/Types/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/a$a;->b:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/16 v0, 0x18

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Types/a$a;->a:[F

    return-void
.end method

.method private static a(II)I
    .locals 1

    rem-int/lit8 v0, p0, 0x4

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    return v0
.end method

.method private a(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;[FIII[F)V
    .locals 22

    mul-int/lit8 v10, p3, 0x3

    mul-int/lit8 v5, p4, 0x3

    mul-int/lit8 v3, p5, 0x3

    add-int/lit8 v2, v10, 0x1

    aget v19, p2, v2

    add-int/lit8 v2, v5, 0x1

    aget v20, p2, v2

    add-int/lit8 v2, v3, 0x1

    aget v21, p2, v2

    const/4 v2, 0x0

    aget v6, p6, v2

    const/4 v2, 0x1

    move/from16 v18, v2

    :goto_0
    move-object/from16 v0, p6

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_7

    aget v15, p6, v18

    cmpg-float v2, v21, v15

    if-gtz v2, :cond_0

    cmpl-float v2, v19, v6

    if-ltz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/artfulbits/aiCharts/Types/a$a;->b:I

    cmpl-float v2, v21, v6

    if-ltz v2, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI)V

    :goto_1
    cmpg-float v2, v19, v15

    if-gez v2, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI)V

    :goto_2
    cmpg-float v2, v20, v6

    if-gez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/4 v13, 0x0

    move-object/from16 v7, p2

    move v8, v5

    move-object/from16 v9, p2

    move v11, v15

    invoke-static/range {v7 .. v13}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI[FIF[FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Types/a$a;->d:Lcom/artfulbits/aiCharts/Types/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/artfulbits/aiCharts/Types/a$a;->a:[F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/artfulbits/aiCharts/Types/a$a;->b:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v2, v0, v4, v6, v1}, Lcom/artfulbits/aiCharts/Types/a;->drawPolygon(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;[FII)V

    :cond_0
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    move v6, v15

    goto :goto_0

    :cond_1
    cmpl-float v2, v20, v6

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/4 v8, 0x0

    move-object/from16 v2, p2

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v8}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI[FIF[FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/4 v13, 0x0

    move-object/from16 v7, p2

    move v8, v3

    move-object/from16 v9, p2

    move v11, v6

    invoke-static/range {v7 .. v13}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI[FIF[FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/4 v13, 0x0

    move-object/from16 v7, p2

    move v8, v5

    move-object/from16 v9, p2

    move v11, v6

    invoke-static/range {v7 .. v13}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI[FIF[FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI)V

    goto :goto_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/4 v13, 0x0

    move-object/from16 v7, p2

    move v8, v3

    move-object/from16 v9, p2

    move v11, v15

    invoke-static/range {v7 .. v13}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI[FIF[FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI)V

    goto/16 :goto_2

    :cond_4
    cmpl-float v2, v20, v15

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v11, p2

    move v12, v5

    move-object/from16 v13, p2

    move v14, v3

    invoke-static/range {v11 .. v17}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI[FIF[FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI)V

    goto/16 :goto_3

    :cond_5
    cmpl-float v2, v19, v15

    if-lez v2, :cond_6

    cmpg-float v2, v20, v15

    if-gez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/4 v13, 0x0

    move-object/from16 v7, p2

    move v8, v5

    move-object/from16 v9, p2

    move v11, v15

    invoke-static/range {v7 .. v13}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI[FIF[FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Types/a$a;->c:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI)V

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lcom/artfulbits/aiCharts/Types/a$a;->a([FI)V

    goto/16 :goto_3

    :cond_7
    return-void
.end method

.method private a([FI)V
    .locals 6

    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    iget v3, p0, Lcom/artfulbits/aiCharts/Types/a$a;->b:I

    mul-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Types/a$a;->a:[F

    add-int/lit8 v5, v3, 0x1

    aput v0, v4, v3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/a$a;->a:[F

    add-int/lit8 v3, v5, 0x1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/a$a;->a:[F

    aput v2, v0, v3

    iget v0, p0, Lcom/artfulbits/aiCharts/Types/a$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/a$a;->b:I

    return-void
.end method

.method private static a([FI[FIF[FI)V
    .locals 5

    add-int/lit8 v0, p1, 0x1

    aget v0, p0, v0

    sub-float v0, p4, v0

    add-int/lit8 v1, p3, 0x1

    aget v1, p2, v1

    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    const/4 v1, 0x0

    aget v2, p0, p1

    aget v3, p2, p3

    aget v4, p0, p1

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    aput v2, p5, v1

    const/4 v1, 0x2

    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    add-int/lit8 v4, p1, 0x2

    aget v4, p0, v4

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    aput v0, p5, v1

    const/4 v0, 0x1

    aput p4, p5, v0

    return-void
.end method


# virtual methods
.method public final a(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;[F[F)V
    .locals 11

    const/4 v3, 0x0

    const/4 v0, 0x1

    aget v0, p2, v0

    const/4 v1, 0x1

    array-length v2, p2

    div-int/lit8 v2, v2, 0x3

    :goto_0
    if-ge v1, v2, :cond_1

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v5, p2, v4

    cmpl-float v5, v5, v0

    if-lez v5, :cond_0

    aget v0, p2, v4

    move v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v3, 0x2

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/artfulbits/aiCharts/Types/a$a;->a(II)I

    move-result v0

    add-int/lit8 v1, v3, -0x1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/artfulbits/aiCharts/Types/a$a;->a(II)I

    move-result v5

    add-int/lit8 v1, v3, 0x1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/artfulbits/aiCharts/Types/a$a;->a(II)I

    move-result v1

    mul-int/lit8 v2, v3, 0x3

    add-int/lit8 v2, v2, 0x1

    aget v2, p2, v2

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v6, p2, v4

    mul-int/lit8 v4, v5, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v9, p2, v4

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v10, p2, v4

    cmpl-float v4, v6, v9

    if-lez v4, :cond_4

    move v4, v0

    :goto_1
    cmpg-float v7, v6, v9

    if-gtz v7, :cond_2

    move v5, v0

    :cond_2
    cmpl-float v7, v6, v10

    if-lez v7, :cond_5

    move v8, v0

    :goto_2
    cmpg-float v7, v6, v10

    if-gtz v7, :cond_6

    move v7, v0

    :goto_3
    cmpl-float v0, v2, v6

    if-nez v0, :cond_8

    cmpl-float v0, v2, v9

    if-nez v0, :cond_8

    cmpl-float v0, v2, v10

    if-nez v0, :cond_8

    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 v0, 0x1

    :goto_4
    array-length v3, p3

    if-ge v0, v3, :cond_3

    aget v3, p3, v0

    cmpl-float v4, v2, v1

    if-ltz v4, :cond_7

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_7

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Types/a$a;->d:Lcom/artfulbits/aiCharts/Types/a;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/artfulbits/aiCharts/Types/a;->drawPolygon(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;[FII)V

    :cond_3
    :goto_5
    return-void

    :cond_4
    move v4, v5

    goto :goto_1

    :cond_5
    move v8, v1

    goto :goto_2

    :cond_6
    move v7, v1

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Types/a$a;->a(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;[FIII[F)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v8

    move v5, v7

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Types/a$a;->a(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;[FIII[F)V

    goto :goto_5
.end method
