class c_722_1;
    integer i = -119;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_722_1;
    c_722_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x0xx0xx1z0z0x001110x01zxxzxzx1zzxxxxzzxzxxxzzzxzzzzxxzzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
