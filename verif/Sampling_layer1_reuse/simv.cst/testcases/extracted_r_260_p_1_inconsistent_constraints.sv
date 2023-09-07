class c_260_1;
    integer i = -42;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_260_1;
    c_260_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z0zxx10z0xz00xx01xzz0z11x1z1xzxzzxzzxzxxxzxxxxzxxxzxzzzxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
