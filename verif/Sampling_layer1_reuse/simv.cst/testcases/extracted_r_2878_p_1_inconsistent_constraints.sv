class c_2878_1;
    integer i = -478;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2878_1;
    c_2878_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxx0x0z1xzx00z101x1zxz10xzzx11zxzzzzxxxzxxzxxzxzzzxxxxzzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
