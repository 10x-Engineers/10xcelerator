class c_3215_1;
    integer i = -534;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3215_1;
    c_3215_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z1xzx0zz1011001z10z1xzxzx1z1xxzzxxzzxzzxzxzxxxxxzzzzzzxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
