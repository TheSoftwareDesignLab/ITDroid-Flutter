.class public final enum Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Types/ChartLineType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BreakMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Auto:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

.field public static final enum Manual:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

.field public static final enum None:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

.field private static final synthetic a:[Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->None:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    new-instance v0, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    const-string v1, "Auto"

    invoke-direct {v0, v1, v3}, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->Auto:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    new-instance v0, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    const-string v1, "Manual"

    invoke-direct {v0, v1, v4}, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->Manual:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->None:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->Auto:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->Manual:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->a:[Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;
    .locals 1

    const-class v0, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    return-object v0
.end method

.method public static values()[Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->a:[Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    invoke-virtual {v0}, [Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    return-object v0
.end method
