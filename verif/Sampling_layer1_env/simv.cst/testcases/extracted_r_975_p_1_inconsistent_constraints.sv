class c_975_1;
    integer i = -161;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_975_1;
    c_975_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxx1z1xxxz0z100zzx1101z1xz010xzxxzzxxxzzxzxzzxzxzxxzzzzxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
