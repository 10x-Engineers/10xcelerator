class c_2642_1;
    integer i = -439;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2642_1;
    c_2642_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxx00xz00xz0zz01x01z1x0z1xxzz01xzzzzzzxxxzxxzzzzzzxzxzxxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
