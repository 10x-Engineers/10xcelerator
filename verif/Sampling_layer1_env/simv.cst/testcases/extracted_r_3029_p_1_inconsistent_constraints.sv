class c_3029_1;
    integer i = -503;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3029_1;
    c_3029_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xzzxzx1zxx0001z00xz00xx10x100xzxzxzxxzxzzzzxzxxzxxzzzxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
