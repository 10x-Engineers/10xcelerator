class c_1172_1;
    integer i = -194;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1172_1;
    c_1172_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xzxxxzxxxzzxx1x1101x0110xxxxz1xzxxxxxxzzxzxzzzxxzxzzxzxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
