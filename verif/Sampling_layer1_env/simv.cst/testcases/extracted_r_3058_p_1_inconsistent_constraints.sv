class c_3058_1;
    integer i = -508;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3058_1;
    c_3058_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x110xx00xz111xz001z0z0101x0z011zzxzxxxxxzzxxzzzzxxzxxzzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
