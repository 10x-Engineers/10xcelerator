class c_1072_1;
    integer i = -177;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1072_1;
    c_1072_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x001z0000xzzz0x101z0z1x1z1000z0zxzxzxzxxxzzxzxzxxxzxzzzxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
