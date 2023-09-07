class c_1446_1;
    integer i = -239;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1446_1;
    c_1446_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xz1xx111110xx0x110z1x1x11xx0zxzxzxxzzzxzzxxxzzxxxxzxxzzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram