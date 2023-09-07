class c_538_1;
    integer i = -88;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_538_1;
    c_538_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx0z0z0xz1xzxzzxzx11z1zxz1xz00zxzzzxzxxzxzxxzxxzxzxxxxxzzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
