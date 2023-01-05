.class public final enum Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Types/ChartPieType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabelStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Inside:Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

.field public static final enum Outside:Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

.field public static final enum OutsideColumn:Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

.field private static final synthetic a:[Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    const-string v1, "Inside"

    invoke-direct {v0, v1, v2}, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;->Inside:Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    new-instance v0, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    const-string v1, "Outside"

    invoke-direct {v0, v1, v3}, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;->Outside:Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    new-instance v0, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    const-string v1, "OutsideColumn"

    invoke-direct {v0, v1, v4}, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;->OutsideColumn:Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;->Inside:Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;->Outside:Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;->OutsideColumn:Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;->a:[Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

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

.method public static valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;
    .locals 1

    const-class v0, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    return-object v0
.end method

.method public static values()[Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;->a:[Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    invoke-virtual {v0}, [Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/artfulbits/aiCharts/Types/ChartPieType$LabelStyle;

    return-object v0
.end method
