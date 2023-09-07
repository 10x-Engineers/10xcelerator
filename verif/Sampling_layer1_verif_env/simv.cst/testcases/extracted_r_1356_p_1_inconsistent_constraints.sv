class c_1356_1;
    integer i = -224;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1356_1;
    c_1356_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz0z11z1z0zxz1x0xz00xxzz0xzz00zxxxzxxxzxxxzzxzxzxzzxzxxzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
