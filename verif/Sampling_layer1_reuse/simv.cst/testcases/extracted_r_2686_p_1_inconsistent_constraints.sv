class c_2686_1;
    integer i = -446;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2686_1;
    c_2686_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z00z1xzz1zz0zz0z1z1zzx1z1xxzx1zzxxxxzzzzxxxxzxzzzzxxxzzzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
