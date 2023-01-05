.class public final enum Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TickMarkMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Cross:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

.field public static final enum Inner:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

.field public static final enum None:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

.field public static final enum Outer:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

.field private static final synthetic a:[Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->None:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    const-string v1, "Inner"

    invoke-direct {v0, v1, v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->Inner:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    const-string v1, "Outer"

    invoke-direct {v0, v1, v4}, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->Outer:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    const-string v1, "Cross"

    invoke-direct {v0, v1, v5}, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->Cross:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->None:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->Inner:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->Outer:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->Cross:Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->a:[Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;
    .locals 1

    const-class v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    return-object v0
.end method

.method public static values()[Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->a:[Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    invoke-virtual {v0}, [Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/artfulbits/aiCharts/Base/ChartAxis$TickMarkMode;

    return-object v0
.end method
