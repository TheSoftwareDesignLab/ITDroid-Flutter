.class Lcom/evancharlton/mileage/views/DateButton$1;
.super Ljava/lang/Object;
.source "DateButton.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/views/DateButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/views/DateButton;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/views/DateButton;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/evancharlton/mileage/views/DateButton$1;->this$0:Lcom/evancharlton/mileage/views/DateButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/evancharlton/mileage/views/DateButton;->access$002(Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;)Lcom/evancharlton/mileage/views/DateButton$StaticDatePickerDialog;

    .line 29
    iget-object v0, p0, Lcom/evancharlton/mileage/views/DateButton$1;->this$0:Lcom/evancharlton/mileage/views/DateButton;

    invoke-static {v0}, Lcom/evancharlton/mileage/views/DateButton;->access$100(Lcom/evancharlton/mileage/views/DateButton;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 30
    iget-object v0, p0, Lcom/evancharlton/mileage/views/DateButton$1;->this$0:Lcom/evancharlton/mileage/views/DateButton;

    invoke-static {v0}, Lcom/evancharlton/mileage/views/DateButton;->access$100(Lcom/evancharlton/mileage/views/DateButton;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 31
    iget-object v0, p0, Lcom/evancharlton/mileage/views/DateButton$1;->this$0:Lcom/evancharlton/mileage/views/DateButton;

    invoke-static {v0}, Lcom/evancharlton/mileage/views/DateButton;->access$100(Lcom/evancharlton/mileage/views/DateButton;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 32
    iget-object v0, p0, Lcom/evancharlton/mileage/views/DateButton$1;->this$0:Lcom/evancharlton/mileage/views/DateButton;

    iget-object v1, p0, Lcom/evancharlton/mileage/views/DateButton$1;->this$0:Lcom/evancharlton/mileage/views/DateButton;

    invoke-static {v1}, Lcom/evancharlton/mileage/views/DateButton;->access$100(Lcom/evancharlton/mileage/views/DateButton;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/views/DateButton;->setDate(J)V

    .line 33
    return-void
.end method
