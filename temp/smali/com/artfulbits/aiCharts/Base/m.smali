.class final Lcom/artfulbits/aiCharts/Base/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/m$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/text/SimpleDateFormat;


# instance fields
.field public final a:Ljava/lang/String;

.field private d:[Lcom/artfulbits/aiCharts/Base/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/m;->c:Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "LABEL"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "XVALUE"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "YVALUE"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "SERIESNAME"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "XDATE"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "INDEX"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "AXISLABEL"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "PERCENT"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "AVERAGE"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "MIN"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "MAX"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    const-string v1, "TAG"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    const/4 v3, 0x0

    const/16 v7, 0x27

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/m;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    move v1, v3

    :goto_0
    if-ge v1, v4, :cond_5

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    if-eq v1, v7, :cond_4

    if-ge v0, v4, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_1

    :cond_0
    const/16 v6, 0x7b

    if-ne v1, v6, :cond_3

    new-instance v1, Lcom/artfulbits/aiCharts/Base/m$a;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/artfulbits/aiCharts/Base/m$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_2
    const/16 v2, 0x7d

    if-eq v0, v2, :cond_2

    if-lt v1, v4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing element format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/artfulbits/aiCharts/Base/m;->a(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/m$a;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/artfulbits/aiCharts/Base/m$a;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/artfulbits/aiCharts/Base/m$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-array v0, v3, [Lcom/artfulbits/aiCharts/Base/m$a;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/artfulbits/aiCharts/Base/m$a;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/m;->d:[Lcom/artfulbits/aiCharts/Base/m$a;

    return-void

    :cond_7
    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_1
.end method

.method protected static a(D)D
    .locals 6

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    mul-double v0, p0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    div-double/2addr v0, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/artfulbits/aiCharts/Base/MathUtils;->round(DI)D

    move-result-wide v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/m$a;
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_2
    new-instance v3, Lcom/artfulbits/aiCharts/Base/m$a;

    sget-object v4, Lcom/artfulbits/aiCharts/Base/m;->b:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0, v2, v1}, Lcom/artfulbits/aiCharts/Base/m$a;-><init>(IILjava/lang/String;)V

    move-object v1, v3

    :cond_3
    return-object v1
.end method

.method private static a(Ljava/lang/StringBuilder;DLcom/artfulbits/aiCharts/Base/m$a;)V
    .locals 2

    iget-object v0, p3, Lcom/artfulbits/aiCharts/Base/m$a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/artfulbits/aiCharts/Base/m;->a(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p3, Lcom/artfulbits/aiCharts/Base/m$a;->d:Ljava/text/Format;

    if-nez v0, :cond_1

    new-instance v0, Ljava/text/DecimalFormat;

    iget-object v1, p3, Lcom/artfulbits/aiCharts/Base/m$a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p3, Lcom/artfulbits/aiCharts/Base/m$a;->d:Ljava/text/Format;

    :cond_1
    iget-object v0, p3, Lcom/artfulbits/aiCharts/Base/m$a;->d:Ljava/text/Format;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/artfulbits/aiCharts/Base/ChartPoint;)Ljava/lang/String;
    .locals 9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/m;->d:[Lcom/artfulbits/aiCharts/Base/m$a;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    iget v5, v4, Lcom/artfulbits/aiCharts/Base/m$a;->a:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v4, v4, Lcom/artfulbits/aiCharts/Base/m$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v5

    invoke-static {v1, v5, v6, v4}, Lcom/artfulbits/aiCharts/Base/m;->a(Ljava/lang/StringBuilder;DLcom/artfulbits/aiCharts/Base/m$a;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v5

    iget-object v7, v4, Lcom/artfulbits/aiCharts/Base/m$a;->c:Ljava/lang/String;

    if-nez v7, :cond_1

    sget-object v4, Lcom/artfulbits/aiCharts/Base/m;->c:Ljava/text/SimpleDateFormat;

    double-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v7, v4, Lcom/artfulbits/aiCharts/Base/m$a;->d:Ljava/text/Format;

    if-nez v7, :cond_2

    new-instance v7, Ljava/text/SimpleDateFormat;

    iget-object v8, v4, Lcom/artfulbits/aiCharts/Base/m$a;->c:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v7, v4, Lcom/artfulbits/aiCharts/Base/m$a;->d:Ljava/text/Format;

    :cond_2
    iget-object v4, v4, Lcom/artfulbits/aiCharts/Base/m$a;->d:Ljava/text/Format;

    double-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    iget v5, v4, Lcom/artfulbits/aiCharts/Base/m$a;->b:I

    invoke-virtual {p1, v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v5

    invoke-static {v1, v5, v6, v4}, Lcom/artfulbits/aiCharts/Base/m;->a(Ljava/lang/StringBuilder;DLcom/artfulbits/aiCharts/Base/m$a;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getSeries()Lcom/artfulbits/aiCharts/Base/ChartSeries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_7
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getSeries()Lcom/artfulbits/aiCharts/Base/ChartSeries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->indexOf(Lcom/artfulbits/aiCharts/Base/ChartPoint;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_8
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAxisLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_9
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    iget v7, v4, Lcom/artfulbits/aiCharts/Base/m$a;->b:I

    invoke-virtual {p1, v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getSeries()Lcom/artfulbits/aiCharts/Base/ChartSeries;

    move-result-object v7

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v7

    iget v8, v4, Lcom/artfulbits/aiCharts/Base/m$a;->b:I

    invoke-virtual {v7, v8}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->getSum(I)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v1, v5, v6, v4}, Lcom/artfulbits/aiCharts/Base/m;->a(Ljava/lang/StringBuilder;DLcom/artfulbits/aiCharts/Base/m$a;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public final a(Lcom/artfulbits/aiCharts/Base/ChartSeries;)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/m;->d:[Lcom/artfulbits/aiCharts/Base/m$a;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    iget v5, v4, Lcom/artfulbits/aiCharts/Base/m$a;->a:I

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v4, v4, Lcom/artfulbits/aiCharts/Base/m$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x5 -> :sswitch_1
        0xc -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    instance-of v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/m;->a(Lcom/artfulbits/aiCharts/Base/ChartPoint;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/m;->a(Lcom/artfulbits/aiCharts/Base/ChartSeries;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/m;->d:[Lcom/artfulbits/aiCharts/Base/m$a;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    iget v5, v4, Lcom/artfulbits/aiCharts/Base/m$a;->a:I

    packed-switch v5, :pswitch_data_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    iget-object v4, v4, Lcom/artfulbits/aiCharts/Base/m$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
