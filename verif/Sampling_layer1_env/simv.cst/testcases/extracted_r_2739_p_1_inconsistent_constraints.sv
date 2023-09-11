class c_2739_1;
    integer i = -455;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2739_1;
    c_2739_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx1xx1zz1xxzxx01xz10xzzx0zxzx01xzzzzzxzzzxzxzxxxxzzzzxzzzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
