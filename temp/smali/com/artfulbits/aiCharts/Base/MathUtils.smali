.class public final Lcom/artfulbits/aiCharts/Base/MathUtils;
.super Ljava/lang/Object;


# static fields
.field public static final PIAndHalf:D = 4.71238898038469

.field public static final PIOver2:D = 1.5707963267948966

.field public static final PIOver4:D = 0.7853981633974483

.field public static final TwoPI:D = 6.283185307179586


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cellingTo(DD)D
    .locals 2

    div-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    return-wide v0
.end method

.method public static clamp(DDD)D
    .locals 1

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    cmpl-double v0, p0, p4

    if-lez v0, :cond_1

    move-wide p2, p4

    goto :goto_0

    :cond_1
    move-wide p2, p0

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static coerce(DD)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double v0, v2, v0

    goto :goto_0
.end method

.method public static equals(Ljava/lang/Double;D)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static floorTo(DD)D
    .locals 2

    div-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    return-wide v0
.end method

.method public static round(DI)D
    .locals 6

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    int-to-double v4, p2

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/artfulbits/aiCharts/Base/MathUtils;->floorTo(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static solveQuadratic(DDD[D)I
    .locals 7

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    neg-double v2, p4

    div-double/2addr v2, p2

    aput-wide v2, p6, v1

    aput-wide v2, p6, v0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    mul-double v0, p2, p2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, p0

    mul-double/2addr v2, p4

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const/4 v2, 0x0

    neg-double v3, p2

    sub-double/2addr v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, p0

    div-double/2addr v3, v5

    aput-wide v3, p6, v2

    const/4 v2, 0x1

    neg-double v3, p2

    add-double/2addr v0, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, p0

    div-double/2addr v0, v3

    aput-wide v0, p6, v2

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
