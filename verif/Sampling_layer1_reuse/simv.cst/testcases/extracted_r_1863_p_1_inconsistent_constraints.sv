class c_1863_1;
    integer i = -309;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1863_1;
    c_1863_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzxx11zz100z0x1x1zx100xxz1zz10xxzzxzzxzxzzxxxzxzxxxzzzzxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
