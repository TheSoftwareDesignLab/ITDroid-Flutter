.class public final enum Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SplitMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Custom:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

.field public static final enum Percentage:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

.field public static final enum Position:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

.field public static final enum Value:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

.field private static final synthetic a:[Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    const-string v1, "Custom"

    invoke-direct {v0, v1, v2}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Custom:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    new-instance v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    const-string v1, "Value"

    invoke-direct {v0, v1, v3}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Value:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    new-instance v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    const-string v1, "Percentage"

    invoke-direct {v0, v1, v4}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Percentage:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    new-instance v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    const-string v1, "Position"

    invoke-direct {v0, v1, v5}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Position:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Custom:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Value:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Percentage:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Position:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->a:[Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;
    .locals 1

    const-class v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    return-object v0
.end method

.method public static values()[Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->a:[Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    invoke-virtual {v0}, [Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    return-object v0
.end method
