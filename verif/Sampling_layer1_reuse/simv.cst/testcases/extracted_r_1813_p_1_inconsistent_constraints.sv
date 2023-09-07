class c_1813_1;
    integer i = -301;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1813_1;
    c_1813_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xzzzzx1xzx1x0zx1zz1x10101x110xxzzzxxxxzxzzzxzzzzxzzxzxxxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
