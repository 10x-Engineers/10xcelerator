class c_230_1;
    integer i = -37;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_230_1;
    c_230_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz01x000zz1z1z0z011x0000x1zxz011zxzxzxxxzzxzzzzzxxxxzxzzxxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
