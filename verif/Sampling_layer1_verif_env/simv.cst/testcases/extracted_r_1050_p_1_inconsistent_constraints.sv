class c_1050_1;
    integer i = -173;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1050_1;
    c_1050_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0z01xzz1xxzxx011z1zx1x00xz0zzzxzxxzxzxxxxxxxxzzxxzxxzzxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
