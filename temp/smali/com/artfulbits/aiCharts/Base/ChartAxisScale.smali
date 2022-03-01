.class public final Lcom/artfulbits/aiCharts/Base/ChartAxisScale;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/ChartAxisScale$a;,
        Lcom/artfulbits/aiCharts/Base/ChartAxisScale$b;,
        Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;,
        Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;
    }
.end annotation


# static fields
.field public static final MARGIN_INTERVAL:D = -1.0

.field public static final MARGIN_NONE:D = 0.0

.field public static final MARGIN_POINT:D = -2.0

.field private static final a:[D

.field private static final b:[D

.field private static final c:[I


# instance fields
.field private final d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

.field private e:Ljava/lang/Double;

.field private f:Ljava/lang/Double;

.field private g:Ljava/lang/Double;

.field private h:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

.field private i:D

.field private j:D

.field private k:D

.field private l:D

.field private m:D

.field private n:D

.field private o:D

.field private p:D

.field private q:D

.field private r:I

.field private s:I

.field private t:D

.field private u:Z

.field private v:D

.field private w:D

.field private x:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x7

    const/4 v0, 0x5

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->a:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->b:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->c:[I

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x4004000000000000L    # 2.5
        0x4014000000000000L    # 5.0
        0x4024000000000000L    # 10.0
    .end array-data

    :array_1
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x408f400000000000L    # 1000.0
        0x40ed4c0000000000L    # 60000.0
        0x414b774000000000L    # 3600000.0
        0x4194997000000000L    # 8.64E7
        0x41e34fd900000000L    # 2.592E9
        0x426b88d865000000L    # 9.4608E11
    .end array-data

    :array_2
    .array-data 4
        0xe
        0xd
        0xc
        0xa
        0x5
        0x2
        0x1
    .end array-data
.end method

.method protected constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
    .locals 9

    const/4 v8, 0x0

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    const/4 v0, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->e:Ljava/lang/Double;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->f:Ljava/lang/Double;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->g:Ljava/lang/Double;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->h:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    iput-wide v6, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->i:D

    iput-wide v6, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    iput-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->k:D

    iput-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->l:D

    iput-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->m:D

    iput-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->n:D

    iput-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    iput-wide v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    iput-wide v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    iput v8, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->r:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->s:I

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->t:D

    iput-boolean v8, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->u:Z

    iput-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->v:D

    iput-wide v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->w:D

    iput-wide v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->x:D

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    return-void
.end method

.method private static a(D)D
    .locals 10

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    div-double v3, p0, v1

    sget-object v5, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->a:[D

    array-length v6, v5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    aget-wide v7, v5, v0

    cmpg-double v9, v3, v7

    if-gtz v9, :cond_1

    mul-double p0, v7, v1

    :cond_0
    return-wide p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(DI)Ljava/util/Calendar;
    .locals 9

    const/16 v8, 0xc

    const/16 v7, 0xa

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    double-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    long-to-double v1, v1

    cmpg-double v1, v1, p0

    if-gez v1, :cond_0

    invoke-virtual {v0, p2, v4}, Ljava/util/Calendar;->add(II)V

    :cond_0
    return-object v0

    :pswitch_1
    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    :pswitch_2
    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    :pswitch_3
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v8, v2}, Ljava/util/Calendar;->set(II)V

    :pswitch_4
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->set(II)V

    :pswitch_5
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    :pswitch_6
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    :pswitch_7
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intervalType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static a(D[I)V
    .locals 4

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->b:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->b:[D

    aget-wide v1, v1, v0

    cmpl-double v1, p0, v1

    if-ltz v1, :cond_1

    const/4 v1, 0x0

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->b:[D

    aget-wide v2, v2, v0

    div-double v2, p0, v2

    invoke-static {v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->a(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p2, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->c:[I

    aget v0, v2, v0

    aput v0, p2, v1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final coefficientToValue(D)D
    .locals 4

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->v:D

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->w:D

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method protected final computeInterval()D
    .locals 4

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getValueTypeInternal()I

    move-result v0

    sget v1, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->r:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    :goto_0
    return-wide v0

    :pswitch_1
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    goto :goto_0

    :pswitch_2
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_3
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_4
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    const-wide v2, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_5
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    const-wide v2, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_6
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    const-wide v2, 0x41e34fd900000000L    # 2.592E9

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_7
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    const-wide v2, 0x426b88d865000000L    # 9.4608E11

    mul-double/2addr v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final computeRange(DD)V
    .locals 1

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->k:D

    iput-wide p3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->l:D

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    return-void
.end method

.method public final contains(D)Z
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final createIterator()Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;
    .locals 7

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getValueTypeInternal()I

    move-result v0

    sget v1, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$a;

    iget-wide v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    iget-wide v3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    iget-wide v5, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    double-to-int v5, v5

    iget v6, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->r:I

    invoke-direct/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$a;-><init>(DDII)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$b;

    iget-wide v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    iget-wide v3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    iget-wide v5, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    invoke-direct/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$b;-><init>(DDD)V

    goto :goto_0
.end method

.method public final getDesiredIntervalCount()I
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->s:I

    return v0
.end method

.method public final getInterval()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->g:Ljava/lang/Double;

    return-object v0
.end method

.method public final getIntervalType()Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->h:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    return-object v0
.end method

.method public final getMargin()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->t:D

    return-wide v0
.end method

.method public final getRealMaximum()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->n:D

    return-wide v0
.end method

.method public final getRealMinimum()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->m:D

    return-wide v0
.end method

.method public final getRealSize()D
    .locals 4

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->n:D

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->m:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public final getVisibleInterval()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    return-wide v0
.end method

.method public final getVisibleIntervalType()Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->r:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Double:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Miliseconds:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Seconds:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Minutes:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Hours:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Days:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Mounth:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Years:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getVisibleMaximum()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    return-wide v0
.end method

.method public final getVisibleMinimum()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    return-wide v0
.end method

.method public final getVisibleSize()D
    .locals 4

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public final getZoomPosition()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    return-wide v0
.end method

.method public final getZoomSize()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->i:D

    return-wide v0
.end method

.method protected final isAuto()Z
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->e:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->f:Ljava/lang/Double;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInverted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->u:Z

    return v0
.end method

.method public final mulZoom(D)V
    .locals 8

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getArea()Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->ensureRefresh()V

    :cond_0
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    add-double/2addr v0, v2

    div-double/2addr v0, v6

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    iget-wide v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, p1

    div-double v4, v2, v6

    sub-double/2addr v0, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setZoom(DD)V

    return-void
.end method

.method protected final recalculate()V
    .locals 14

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getArea()Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v5

    const/4 v0, 0x2

    new-array v11, v0, [I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getValueTypeInternal()I

    move-result v0

    sget v1, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isIndexed()Z

    move-result v7

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->e:Ljava/lang/Double;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->k:D

    :goto_1
    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->f:Ljava/lang/Double;

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->l:D

    :goto_2
    sub-double v8, v2, v0

    iget v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->s:I

    int-to-double v12, v4

    div-double/2addr v8, v12

    const/4 v4, -0x1

    if-eqz v7, :cond_3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-wide v9, v2

    move-wide v2, v0

    :goto_3
    iput-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->m:D

    iput-wide v9, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->n:D

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->i:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_e

    iput-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    iput-wide v9, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    iput-wide v7, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    iput v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->r:I

    :goto_4
    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->u:Z

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->v:D

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->w:D

    :goto_5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->w:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->x:D

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanged()V

    return-void

    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->e:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->f:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->g:Ljava/lang/Double;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->g:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    if-eqz v6, :cond_4

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->h:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    if-nez v4, :cond_8

    const/16 v4, 0xe

    :cond_4
    :goto_6
    iget-wide v9, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->t:D

    const-wide/16 v12, 0x0

    cmpl-double v9, v9, v12

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->e:Ljava/lang/Double;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->f:Ljava/lang/Double;

    if-nez v9, :cond_11

    :cond_5
    iget-wide v9, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->t:D

    const-wide/16 v12, 0x0

    cmpg-double v9, v9, v12

    if-gez v9, :cond_d

    iget-wide v9, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->t:D

    const-wide/high16 v12, -0x4000000000000000L    # -2.0

    cmpl-double v9, v9, v12

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v9}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isPrimaryAxis()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartArea;->b()D

    move-result-wide v9

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v5, v9, v12

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->e:Ljava/lang/Double;

    if-nez v5, :cond_6

    sub-double/2addr v0, v9

    :cond_6
    iget-object v5, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->f:Ljava/lang/Double;

    if-nez v5, :cond_7

    add-double/2addr v2, v9

    :cond_7
    move-wide v9, v2

    move-wide v2, v0

    goto/16 :goto_3

    :cond_8
    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->h:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    iget v4, v4, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;->Field:I

    goto :goto_6

    :cond_9
    if-eqz v6, :cond_a

    invoke-static {v8, v9, v11}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->a(D[I)V

    const/4 v4, 0x0

    aget v4, v11, v4

    int-to-double v7, v4

    const/4 v4, 0x1

    aget v4, v11, v4

    goto :goto_6

    :cond_a
    invoke-static {v8, v9}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->a(D)D

    move-result-wide v7

    goto :goto_6

    :cond_b
    iget-object v5, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->e:Ljava/lang/Double;

    if-nez v5, :cond_c

    invoke-static {v0, v1, v7, v8}, Lcom/artfulbits/aiCharts/Base/MathUtils;->floorTo(DD)D

    move-result-wide v0

    :cond_c
    iget-object v5, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->f:Ljava/lang/Double;

    if-nez v5, :cond_11

    invoke-static {v2, v3, v7, v8}, Lcom/artfulbits/aiCharts/Base/MathUtils;->cellingTo(DD)D

    move-result-wide v2

    move-wide v9, v2

    move-wide v2, v0

    goto/16 :goto_3

    :cond_d
    iget-wide v9, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->t:D

    sub-double/2addr v0, v9

    iget-wide v9, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->t:D

    add-double/2addr v2, v9

    move-wide v9, v2

    move-wide v2, v0

    goto/16 :goto_3

    :cond_e
    sub-double v0, v9, v2

    iget-wide v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->i:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    sub-double v4, v9, v7

    invoke-static/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/MathUtils;->clamp(DDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    add-double/2addr v0, v7

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    if-eqz v6, :cond_f

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->s:I

    int-to-double v0, v0

    div-double v0, v7, v0

    invoke-static {v0, v1, v11}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->a(D[I)V

    const/4 v0, 0x0

    aget v0, v11, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    const/4 v0, 0x1

    aget v0, v11, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->r:I

    goto/16 :goto_4

    :cond_f
    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->s:I

    int-to-double v0, v0

    div-double v0, v7, v0

    invoke-static {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->q:D

    goto/16 :goto_4

    :cond_10
    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->v:D

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->w:D

    goto/16 :goto_5

    :cond_11
    move-wide v9, v2

    move-wide v2, v0

    goto/16 :goto_3
.end method

.method public final resetZoom()V
    .locals 4

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    iput-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->i:D

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    :cond_1
    return-void
.end method

.method public final scroll(D)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setZoomPosition(D)V

    return-void
.end method

.method public final setDateRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setRange(DD)V

    return-void
.end method

.method public final setDateRange(Ljava/util/Date;Ljava/util/Date;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setRange(DD)V

    return-void
.end method

.method public final setDesiredIntervalCount(I)V
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->s:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->s:I

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    :cond_0
    return-void
.end method

.method public final setInterval(Ljava/lang/Double;)V
    .locals 1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->g:Ljava/lang/Double;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    return-void
.end method

.method public final setInterval(Ljava/lang/Double;Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;)V
    .locals 1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->g:Ljava/lang/Double;

    iput-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->h:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    return-void
.end method

.method public final setIntervalType(Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->h:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->h:Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalType;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    :cond_0
    return-void
.end method

.method public final setInverted(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->u:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->u:Z

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    :cond_0
    return-void
.end method

.method public final setMargin(D)V
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->t:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->t:D

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    :cond_0
    return-void
.end method

.method public final setMaximum(Ljava/lang/Double;)V
    .locals 1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->f:Ljava/lang/Double;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    return-void
.end method

.method public final setMinimum(Ljava/lang/Double;)V
    .locals 1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->e:Ljava/lang/Double;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    return-void
.end method

.method public final setRange(DD)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->e:Ljava/lang/Double;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->f:Ljava/lang/Double;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    return-void
.end method

.method public final setZoom(DD)V
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->i:D

    cmpl-double v0, v0, p3

    if-eqz v0, :cond_1

    :cond_0
    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    iput-wide p3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->i:D

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    :cond_1
    return-void
.end method

.method public final setZoomPosition(D)V
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->i:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->j:D

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->recalculate()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->d:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->onScaleChanging()V

    :cond_0
    return-void
.end method

.method public final valueToCoefficient(D)D
    .locals 4

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->x:D

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->v:D

    sub-double v2, p1, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public final zoom(D)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->zoomToSize(D)V

    return-void
.end method

.method public final zoom(DD)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setZoom(DD)V

    return-void
.end method

.method public final zoomRange(DD)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->zoomToRange(DD)V

    return-void
.end method

.method public final zoomToFactor(D)V
    .locals 6

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    iget-wide v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->n:D

    iget-wide v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->m:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v4, v2, v4

    sub-double/2addr v0, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setZoom(DD)V

    return-void
.end method

.method public final zoomToRange(DD)V
    .locals 4

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    sub-double v2, p3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setZoom(DD)V

    return-void
.end method

.method public final zoomToSize(D)V
    .locals 8

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->o:D

    iget-wide v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->p:D

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    div-double/2addr v0, v6

    div-double v2, p1, v6

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setZoom(DD)V

    return-void
.end method
