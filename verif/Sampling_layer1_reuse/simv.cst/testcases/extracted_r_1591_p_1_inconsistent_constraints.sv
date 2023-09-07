class c_1591_1;
    integer i = -264;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1591_1;
    c_1591_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xxzxxx0zxxz11100xz00x11z00z1xxxxxzzxzxxxxzzxxxzzzzxxzxzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
