class c_1022_1;
    integer i = -169;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1022_1;
    c_1022_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1100xxz0xzx1zz1z1xzxzzx1zxx1001xxzzxzxxxzzzzzxxxzxzxzxxxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
