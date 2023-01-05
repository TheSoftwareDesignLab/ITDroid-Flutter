.class public final Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$1;,
        Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;


# instance fields
.field public final CloseValueIndex:I

.field public final HighValueIndex:I

.field public final LowValueIndex:I

.field public final OpenValueIndex:I

.field public final SizeValueIndex:I

.field public final YValueIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;-><init>()V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->DEFAULT:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->SizeValueIndex:I

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->OpenValueIndex:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->CloseValueIndex:I

    return-void
.end method

.method public varargs constructor <init>([Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->YValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    invoke-static {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->a([Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;)I

    move-result v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->SizeValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    invoke-static {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->a([Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;)I

    move-result v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->SizeValueIndex:I

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->LowValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    invoke-static {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->a([Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;)I

    move-result v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->HighValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    invoke-static {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->a([Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;)I

    move-result v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->OpenValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    invoke-static {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->a([Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;)I

    move-result v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->OpenValueIndex:I

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->CloseValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    invoke-static {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->a([Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;)I

    move-result v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->CloseValueIndex:I

    return-void
.end method

.method private static a([Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    if-ne p1, v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public final varargs getIndices([Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;)[I
    .locals 4

    array-length v0, p1

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$1;->a:[I

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    aput v2, v1, v0

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->SizeValueIndex:I

    aput v2, v1, v0

    goto :goto_1

    :pswitch_2
    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    aput v2, v1, v0

    goto :goto_1

    :pswitch_3
    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    aput v2, v1, v0

    goto :goto_1

    :pswitch_4
    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->OpenValueIndex:I

    aput v2, v1, v0

    goto :goto_1

    :pswitch_5
    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->CloseValueIndex:I

    aput v2, v1, v0

    goto :goto_1

    :cond_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
