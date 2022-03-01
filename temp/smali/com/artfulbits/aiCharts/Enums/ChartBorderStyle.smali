.class public final enum Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum All:Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

.field public static final enum Simple:Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

.field private static final synthetic a:[Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

    const-string v1, "Simple"

    invoke-direct {v0, v1, v2}, Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;->Simple:Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

    new-instance v0, Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

    const-string v1, "All"

    invoke-direct {v0, v1, v3}, Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;->All:Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;->Simple:Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;->All:Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;->a:[Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;
    .locals 1

    const-class v0, Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

    return-object v0
.end method

.method public static values()[Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;->a:[Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

    invoke-virtual {v0}, [Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

    return-object v0
.end method
