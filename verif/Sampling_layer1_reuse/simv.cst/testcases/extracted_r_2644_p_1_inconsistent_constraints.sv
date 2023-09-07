class c_2644_1;
    integer i = -439;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2644_1;
    c_2644_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xz01xzxzzx1zz1z10x0xz1x0xzz0xzxzxxzxxxzzxxzxzzxzzxxzzzzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
