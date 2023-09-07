class c_412_1;
    integer i = -67;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_412_1;
    c_412_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z11xx1xxxx11001x10xzxzzxx1zxx1zzzzxxxzxxxxxxzxxzxzzzxzxzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
