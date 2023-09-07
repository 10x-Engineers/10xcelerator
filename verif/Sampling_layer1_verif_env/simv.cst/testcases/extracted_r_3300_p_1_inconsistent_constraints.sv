class c_3300_1;
    integer i = -548;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3300_1;
    c_3300_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10z101xzzzzx11xxx1xxzxx0xz0zxzzxzzxxzzzxzzxzxzzxxzxxxzzxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
