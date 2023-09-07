class c_3223_1;
    integer i = -536;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3223_1;
    c_3223_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx1xx0001zxxz111xx11100001100zxzzxzzxzxxzxxzxxzzxxzxzxzxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
