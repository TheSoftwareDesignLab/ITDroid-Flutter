.class final Lcom/artfulbits/aiCharts/Base/ChartAxisScale$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartAxisScale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Calendar;

.field private final b:Ljava/util/Calendar;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(DDII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$a;->b:Ljava/util/Calendar;

    invoke-static {p1, p2, p6}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->a(DI)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$a;->a:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$a;->b:Ljava/util/Calendar;

    double-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iput p5, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$a;->c:I

    iput p6, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$a;->d:I

    return-void
.end method


# virtual methods
.method public final current()D
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$a;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public final next()Z
    .locals 3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$a;->a:Ljava/util/Calendar;

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$a;->d:I

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$a;->c:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$a;->a:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$a;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
