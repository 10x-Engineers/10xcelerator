class c_2800_1;
    integer i = -465;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2800_1;
    c_2800_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z100xzz1x01xzz1z110z0zx1x1101z0xzxzxzzzzxzzxxxxxxxzxxxzxzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
