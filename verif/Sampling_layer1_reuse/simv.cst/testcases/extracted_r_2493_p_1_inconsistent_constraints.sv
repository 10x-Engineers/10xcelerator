class c_2493_1;
    integer i = -414;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2493_1;
    c_2493_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x1z1x11xzx101z0z101x110z1x0z01xzzzzzxxxxxxxzzxxzxzzzzzxzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
