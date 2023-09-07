class c_2270_1;
    integer i = -377;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2270_1;
    c_2270_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xzzz0zz000x1z011zx1x0z1zxzzzx0zxzzxxxxxxzxzzxxzxxxzzzzxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
