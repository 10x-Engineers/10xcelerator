class c_1455_1;
    integer i = -241;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1455_1;
    c_1455_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0zz00z1010101zzz1x0zx1zxz0zx0zxzxzxzzzxzzzzxzzzzzxzzzxzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
