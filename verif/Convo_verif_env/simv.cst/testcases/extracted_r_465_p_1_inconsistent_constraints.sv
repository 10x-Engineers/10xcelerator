class c_465_1;
    integer i = 465;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_465_1;
    c_465_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01111xx00z01zzx0xxx00111x0x00011xzxzzxzzxzzzzzzzxxzxxxzxzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
